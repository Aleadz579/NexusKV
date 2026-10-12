cmake_minimum_required(VERSION 3.20)

project(NexusKV VERSION 0.0.1 LANGUAGES CXX)

set(CMAKE_CXX_STANDARD 20)
set(CMAKE_CXX_STANDARD_REQUIRED ON)
set(CMAKE_CXX_EXTENSIONS OFF)

find_package(mysql-concpp REQUIRED)

add_executable(nexuskv
    src/main.cpp
)

target_link_libraries(nexuskv 
    mysql::concpp
)