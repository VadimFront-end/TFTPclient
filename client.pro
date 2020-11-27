TEMPLATE = app
CONFIG += console c++11
CONFIG -= app_bundle
CONFIG -= qt

SOURCES += \
        client.cpp \
        main.cpp \

HEADERS += \
    client.h \

LIBS += -lws2_32
