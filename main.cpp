#include "client.h"
#include <fstream>

int main()
{
    client Client;
    //отправка файла на сервер
    std::cout<<"Input file for transfer to server"<<8080;
    char req[100];
    std::cin>>req;
    Client<<"WRQ";
    char res[100];
    Client>>res;
    Client<<"DATA";
    std::ifstream file(req);
    char byte[512];
    while(!file.eof()) {
        int i=0;
        for(;i<512||!file.eof();i++) {
            file.get(byte[i]);
        }
        Client.sendMassage2(byte, i);
        if(i==512&&file.eof())Client.sendMassage2(byte, 0);
    }
    Client>>res;
    if(res=="ACK")std::cout<<"OK";
    //получаем файл с сервера
    Client<<"RRQ";
    memset(byte, 0, 512);
    std::ofstream file2;
    int byteCount=Client.getMassage2(byte, 512);
    while(byteCount==512) {
        for(int i=0;i<512;i++) {
            file2.put(byte[i]);
        }
        memset(byte, 0, 512);
        byteCount=Client.getMassage2(byte, 512);
    }
    for(int i=0;i<byteCount;i++) {
        file2.put(byte[i]);
    }
    return 0;
}
