//
// Created by timur on 10.03.2026.
//
#include "JsonWriter.h"

#include <fstream>
#include <iostream>

using namespace std;

string get_tab_string(int count) {
    string result;
    for (int i = 0; i < count; i++) {
        result += "\t";
    }
    return result;
}

void write_JSON_from_university(University univer) {
    int tab_count = 0;
    ofstream file("base.json");
    file << "{\n";
    file << get_tab_string(++tab_count) << '"' <<univer.name << "\":[\n";
    for (auto& faculty : univer.faculties) {
        file << get_tab_string(++tab_count) << "{\n" << get_tab_string(++tab_count) << '"' << faculty.name << "\":[\n";
        for (auto& major : faculty.majors) {
            file << get_tab_string(++tab_count) << "{\n" << get_tab_string(++tab_count) << '"' << major.name << "\":[\n";
            for (auto& course : major.courses) {
                file << get_tab_string(++tab_count) << "[\n";
                for (auto& student : course.students) {
                    file << get_tab_string(++tab_count) << "{\"id\": " << student.id <<", \"name\": \""<<student.name<<"\", \"surname\": \""<< student.surname <<"\", \"gender\": \""<< student.gender<<"\", \"age\":"<< student.age << "}";
                    if (&student != &course.students.back()) {
                        file << ",";
                    }
                    tab_count--;
                    file << "\n";
                }
                file << get_tab_string(tab_count) << "]";
                if (&course != &major.courses.back()) {
                    file << ",";
                }
                tab_count--;
                file << "\n";
            }
            file << get_tab_string(tab_count) << "]\n" << get_tab_string(--tab_count) <<"}";
            if (&major != &faculty.majors.back()) {
                file << ",";
            }
            tab_count--;
            file  << "\n";
        }
        file << get_tab_string(tab_count) << "]\n" << get_tab_string(--tab_count) << "}";
        if (&faculty != &(univer.faculties).back()) {
            file << ",";
        }
        tab_count--;
        file  << "\n";
    }

    file << get_tab_string(tab_count) << "]\n" << get_tab_string(--tab_count) << "}";
    file.close();
}
