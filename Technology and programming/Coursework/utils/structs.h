//
// Created by timur on 26.02.2026.
//

#ifndef STRUCTS_H
#define STRUCTS_H
#include <string>
#include <vector>

using namespace std;


struct Student;
struct Course;
struct Major;
struct Faculty;
struct University;

struct Student {
    int id;
    string name;
    string surname;
    string gender;
    int age;

    Course* course = nullptr;
};
struct Course {
    int course_number;
    vector<Student> students;

    Major* major = nullptr;
};
struct Major {
    string name;
    vector<Course> courses;

    Faculty* faculty = nullptr;
};
struct Faculty {
    string name;
    vector<Major> majors;

    University* university = nullptr;
};
struct University {
    string name;
    vector<Faculty> faculties;
};

#endif //STRUCTS_H