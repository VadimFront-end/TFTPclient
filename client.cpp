#include "client.h"

client::client()
{
    start();
}

client::~client() {
    stop();
}

client & client::operator <<(const char *oper1) {
    sendMassage(oper1);
    return *this;
}

client & client::operator >>(char *oper2) {
    getMassage(oper2);
    return *this;
}

client & client::operator <<(const int &oper1) {
    char number[100];
    sprintf(number, "%d", oper1);
    sendMassage(number);
    return *this;
}

client & client::operator >>(int &oper2) {
    char number[100];
    getMassage(number);
    oper2=atoi(number);
    return *this;
}


bool client::start() {
    WSAStartup(MAKEWORD(2,2),&wData);
        sock=socket(AF_INET,SOCK_STREAM,0);
        address.sin_family=AF_INET;
        address.sin_port=8008;
        address.sin_addr.s_addr=inet_addr("127.0.0.1");
        //посылаем запрос на соединение в серверное гнездо(пока не установим соединение)

        std::string port = "21";
        std::string host = "172.20.10.2";
        struct addrinfo hints;
        struct addrinfo* servinfo;

        memset(&hints, 0, sizeof hints);
        hints.ai_family = AF_UNSPEC;
        hints.ai_socktype = SOCK_STREAM;
        hints.ai_flags = AI_PASSIVE;
        getaddrinfo(host.c_str(), port.c_str(), &hints, &servinfo);

        while (connect(sock,servinfo->ai_addr, servinfo->ai_addrlen));
        printf("Connected\n");
        return true;
}

bool client::sendMassage(const char *mass) {
    strcpy(message,mass);
    send(sock,mass,100,0);//отправляем сообщение
    return true;
}

bool client::sendMassage2(const char *mass, int n) {
    send(sock,mass,n,0);//отправляем сообщение
    return true;
}

bool client::getMassage(char *mass) {
    recv(sock,message,100,0);//получаем сообщение
    strcpy(mass,message);
    return true;
}

int client::getMassage2(char *mass, int n) {
    int result=recv(sock,mass,n,0);//получаем сообщение
    return result;
}

void client::stop() {
    shutdown(sock,2);//закрываем соединение
    closesocket(sock);//закрываем гнездо
    WSACleanup();//отключаем библиотеку
}


