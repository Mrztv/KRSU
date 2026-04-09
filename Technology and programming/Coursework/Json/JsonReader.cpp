#include "JsonReader.h"

#include <any>
#include <fstream>
#include <iostream>
#include <map>
#include <string>
#include <vector>
#include <cmath>
#include <variant>

#include "../utils/structs.h"
#include "../utils/string_utils.h"

using namespace std;

string buffer = "";

vector<Student> create_students(JSON_Value& v) {
    vector<Student> result;
    Student for_add_student;
    for (auto& student : get<JSON_Array>(v.content)) {
        for (auto& parameter : get<JSON_Object>(student.content)) {
            if (parameter.first == "name") {
                for_add_student.name = get<string>(parameter.second.content);
            } else if (parameter.first == "age") {
                for_add_student.age = get<double>(parameter.second.content);
            } else if (parameter.first == "id") {
                for_add_student.id = (int)get<double>(parameter.second.content);
            } else if (parameter.first == "gender") {
                for_add_student.gender = get<string>(parameter.second.content);
            } else if (parameter.first == "surname") {
                for_add_student.surname = get<string>(parameter.second.content);
            }
        }
        result.push_back(for_add_student);
    }
    return result;
}

vector<Group> create_groups(JSON_Value& v) {
    vector<Group> result;
    for (auto& groups : get<JSON_Array>(v.content)) {
        Group for_add_group;
        for (auto& group : get<JSON_Object>(groups.content)) {
            for_add_group.name = group.first;
            for_add_group.students = create_students(group.second);
            result.push_back(for_add_group);
        }
    }
    return result;
}

vector<Course> create_courses(JSON_Value &v) {
    vector<Course> result;
    int count = 0;
    Course for_add_course;
    for (auto& course : get<JSON_Array>(v.content)) {
        count++;
        for_add_course.course_number = count;
        for_add_course.groups = create_groups(course);
        result.push_back(for_add_course);
    }
    return result;
}

vector<Major> create_majors(JSON_Value &v) {
    vector<Major> result;
    for (auto& majors : get<JSON_Array>(v.content)) {
        Major for_add_major;
        for (auto& major : get<JSON_Object>(majors.content)) {
            for_add_major.name = major.first;
            for_add_major.courses = create_courses(major.second);
            result.push_back(for_add_major);
        }
    }
    return result;
}

vector<Faculty> create_faculties(JSON_Value& v) {
    vector<Faculty> result;
    for (auto& faculties : get<JSON_Array>(v.content)) {
        Faculty for_add_faculty;
        for (auto& faculty : get<JSON_Object>(faculties.content)) {
            for_add_faculty.name = faculty.first;
            for_add_faculty.majors = create_majors(faculty.second);
            result.push_back(for_add_faculty);
        }
    }
    return result;
}

University create_university(JSON_Value& v) {
    University result = University("", vector<Faculty>());
    for (auto& faculties : get<JSON_Object>(v.content)) {
        result.name.append(faculties.first);
        result.faculties = create_faculties(faculties.second);
    }
    return result;
}

JSON_Value parse_array(string::iterator &i) {
    JSON_Value result;
    JSON_Array value;
    while (*i != ']') {
        if (*i == ',' || *i == '}') {i++; continue;}
        value.push_back(parse_value(i));
        i++;
    }
    result.content = value;
    return result;
}



JSON_Value parse_string(string::iterator& i) {
    JSON_Value result;
    string value = "";
    do {
        i++;
        value.push_back(*i);
    } while (*i != '"');
    value.pop_back();
    i++;
    result.content = value;
    return result;
}

JSON_Value parse_number(string::iterator& i) {
    JSON_Value result;
    double value = 0.0;
    bool negative = false;
    string number = "";
    while (*i != ',' && *i != '}' && *i != ' ' && *i != '\t' && *i != '\n' && *i != '\r' && *i != ']' && *i != '"') {
        number += *i;
        i++;
    }
    if (number.front() == '-') {
        negative = true;
        number.erase(0, 1);
    }
    int dot_index = number.find('.');

    if (dot_index != string::npos) {
        string integer = number.substr(0, dot_index);
        string decimal = number.substr(dot_index + 1);
        value = (double)std::stod(integer.append(decimal)) / pow(10, (int)decimal.length());
    } else {
        value = std::stod(number);
    }

    if (negative) {
        value = -value;
    }
    result.content = value;
    return result;
}

JSON_Value parse_null(string::iterator& i) {
    JSON_Value result;
    result.content = nullptr;
    return result;
}

JSON_Value parse_boolean(string::iterator& i) {
    JSON_Value result;
    result.content = *i=='t'? true : false;
    return result;
}

JSON_Value parse_value(string::iterator& i) {
    JSON_Value result;
    if (*i=='[') {
        result = parse_array(++i);
        while (*i != ']') {
            i++;
        }
    } else if (*i=='{') {
        result = parse_object(++i);
        while (*i != '}') {
            i++;
        }
    } else if (*i=='"') {
        result = parse_string(i);
    } else if (*i >= '1' && *i <= '9' || *i == '-') {
        result = parse_number(i);
    } else if (*i == 'n') {
        result = parse_null(i);
    } else if (*i == 't' || *i == 'f') {
        result = parse_boolean(++i);
    }
    return result;
}

JSON_Value parse_object(string::iterator& i) {
    JSON_Value result;
    JSON_Object value;
    string name = "";
    JSON_Value second;
    while (*i != '}') {
        if (*i == '"') {
            do {
                i++;
                name.push_back(*i);
            } while (*i != '"');
            name.pop_back();
            while (*i != ':') {
                i++;
            }
            i++;
            second = parse_value(i);
            value[name] = second;
            name.clear();
            if (*i == ',') {
                continue;
            }
            result.content = value;
            return result;
        }
        i++;
    }
    return result;
}





University get_university_from_JSON() {
    ifstream file_input("base.json");
    fstream file_inline("base_inline.json");
    string line;

    buffer = "";
    string shema = "";
    while (getline(file_input, line)) {
        line = trim(line);
        buffer += line;
    }
    file_input.close();

    for (auto i = buffer.begin(); i != buffer.end(); i++) {
        if (*i == '{' || *i == '[' || *i == ':' || *i == ',' || *i == ']' || *i == '}') {
            shema += *i;
        }
    }
    // cout << shema << endl;


    JSON_Value result = parse_object(++buffer.begin());
    University university = create_university(result);

    for (auto& faculty : university.faculties) {
        for (auto& major : faculty.majors) {
            for (auto& course : major.courses) {
                for (auto& group : course.groups) {
                    for (auto& student : group.students) {
                        student.group = &group;
                    }
                    group.course = &course;
                }
                course.major = &major;
            }
            major.faculty = &faculty;
        }
        faculty.university = &university;
    }

    // cout << JSONType[result.content.index()] << endl;

    // cout << JSONType[0] << endl;
    // cout << JSONType[1] << endl;
    // cout << JSONType[2] << endl;
    // cout << JSONType[3] << endl;
    // cout << JSONType[4] << endl;
    // cout << JSONType[5] << endl;






    // cout << buffer << endl;
    file_inline << buffer;
    file_inline.close();
    return university;
}