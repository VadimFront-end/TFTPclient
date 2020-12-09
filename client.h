#ifndef CLIENT_H
#define CLIENT_H
#include <winsock2.h>
#include <iostream>
#include <ws2tcpip.h>

class client
{
public:
    client();
    ~client();
    bool start();
    bool sendMassage(const char *);
    bool getMassage(char *);
    void stop();
    client & operator <<( const char*);
    client & operator >>(char *);
    client & operator >>(int &);
    client & operator <<(const int &);
    bool sendMassage2(const char *, int);
    int getMassage2(char *, int);
private:
    int sock;
    WSAData wData;
    //переменная для моего сообщения на сервер
    char message[100];
    struct sockaddr_in address;
};

#endif
