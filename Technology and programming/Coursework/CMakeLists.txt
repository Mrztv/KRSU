cmake_minimum_required(VERSION 4.1)
project(Coursework)

set(CMAKE_CXX_STANDARD 20)

add_executable(main.cpp
        main/main.cpp Json/JsonReader.cpp
        utils/string_utils.h
        utils/structs.h
        Json/JsonReader.h
        Json/JsonWriter.h
        Json/JsonWriter.cpp
        utils/commands.h
)
