#include "client.h"
#include <fstream>

int createPackage(char *fileUpload, int code, char *req) {
    fileUpload[0] = '0';
    fileUpload[1] = code + '0';
    int i = 0;
    for (; req[i] != '\0'; i++) {
        fileUpload[i + 2] = req[i];
    }
    i += 2;
    fileUpload[i] = 0 + '0';
    i++;
    char tmp[6] = "octet";
    for (int j = 0; tmp[j] != '\0'; j++, i++) {
        fileUpload[i] = tmp[j];
    }
    fileUpload[i] = 0 + '0';
    i++;
    fileUpload[i] = '\0';
    return i;
}

int main() {
    client Client;
    //отправка файла на сервер
    std::cout << "Input file for transfer to server\n";
    char req[100];
    char fileUpload[100];
    std::cin >> req;
    int length = createPackage(fileUpload, 2, req);
    std::cout << fileUpload << std::endl;
    Client.sendMassage2(fileUpload, length);
    char res[100];
    Client >> res;
    if (res[1] != '4') {
        std::cout << "Server denied ACCESS\n";
        return 0;
    }
    std::cout << "Start data sendig\n";
    std::ifstream file(req);
    char byte[516];
    byte[0] = '0';
    byte[1] = '3';
    int numberOfBlock = 1;
    while (!file.eof()) {
        byte[2] = numberOfBlock / 256 + '0';
        byte[3] = numberOfBlock % 256 + '0';
        int i = 0;
        for (; i < 512 && !file.eof(); i++) {
            if(!file.eof()) // Тут добавил условие, но его не хватает, лишний символ все равно записывается
                file.get(byte[i + 4]);
        }
        byte[i + 4] = '\0'; // Здесь тоже что-то не так
        Client.sendMassage2(byte, i + 3); // Заменил на 3, в цикле же i увеличилась
        Client >> res;
        while (res[1] != '4') {
            Client.sendMassage2(byte, i + 3);
            Client >> res;
        }
        numberOfBlock++;
        if (i == 512 && file.eof()) {
            byte[2] = numberOfBlock / 256 + '0';
            byte[3] = numberOfBlock % 256 + '0';
            Client.sendMassage2(byte, 4);
            Client >> res;
            while (res[1] != '4') {
                Client.sendMassage2(byte, 4);
                Client >> res;
            }
        }
    }
    std::cout << "Data sended\n";
    //получаем файл с сервера
    std::cout << "Enter file's name which would u like to download:\n";
    std::cin >> req;
    length = createPackage(fileUpload, 1, req);
    std::cout << fileUpload << std::endl;
    Client.sendMassage2(fileUpload, length);
    /*
    Client >> res;
    if (res[1] != '4') {
        std::cout << "Server denied ACCESS";
        return 0;
    }
    */
    std::cout << "Start data recive\n";
    memset(byte, 0, 516);
    std::ofstream file2(req);
    int byteCount = Client.getMassage2(byte, 516);
    char okMessage[4];
    okMessage[0] = '0';
    okMessage[1] = '4';
    okMessage[2] = byte[2];
    okMessage[3] = byte[3];
    Client.sendMassage2(okMessage, 4);
    while (byteCount == 516) {
        for (int i = 0; i < 512; i++) {
            file2.put(byte[i + 4]);
        }
        memset(byte, 0, 516);
        byteCount = Client.getMassage2(byte, 516);
        okMessage[2] = byte[2];
        okMessage[3] = byte[3];
        Client.sendMassage2(okMessage, 4);
    }
    int i;
    for (i = 4; i < byteCount; i++) {
        file2.put(byte[i]);
    }
    file2.put('\0');
    std::cout << "Data recived\n";
    return 0;
}
