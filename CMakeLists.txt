cmake_minimum_required(VERSION 3.17)

project(string_sending)

include_directories(./)

add_executable(client client.cpp main.cpp)

if(WIN32)
     target_link_libraries(client wsock32 ws2_32)

endif()
