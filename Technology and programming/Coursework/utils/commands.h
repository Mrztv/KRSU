//
// Created by timur on 12.03.2026.
//

#ifndef COURSEWORK_COMMANDS_H
#define COURSEWORK_COMMANDS_H
#include <algorithm>
#include <iostream>
#include <random>
#include <string>
#include "../utils/string_utils.h"

using namespace std;

enum Commands {
    Create,
    Read,
    Update,
    Delete,
    Exit,
    Save,
    Unknown,
};

bool is_number(string str) {
    std::string::const_iterator it = str.begin();
    while (it != str.end() && std::isdigit(*it)) ++it;
    return !str.empty() && it == str.end();
}

int get_last_ID(University university) {
    int max_id;
    for (auto& faculty : university.faculties) {
        for (auto& major : faculty.majors) {
            for (auto& course : major.courses) {
                for (auto& group : course.groups) {
                    for (auto& student : group.students) {
                        max_id = max(max_id, student.id);
                    }
                }
            }
        }
    }
    return max_id;
}

Commands resolveCommand(string command) {

    if (!is_number(command)){
        if (to_lower(command) == "create") {
            return Commands::Create;
        }  if (to_lower(command) == "read") {
            return Commands::Read;
        }  if (to_lower(command) == "update") {
            return Commands::Update;
        }  if (to_lower(command) == "delete") {
            return Commands::Delete;
        } if (to_lower(command) == "exit") {
            return Commands::Exit;
        } if (to_lower(command) == "save") {
            return Commands::Exit;
        }
    } else {
        switch ((int)stoi(command)) {
            case 1: return Commands::Create;
            case 2: return Commands::Read;
            case 3: return Commands::Update;
            case 4: return Commands::Delete;
            case 5: return Commands::Exit;
            case 6: return Commands::Save;
        }
    }
    return Commands::Unknown;
}

void print_student(Student student) {
    cout << to_string(student.id) + ". " <<
            student.name+" " <<
            student.surname+"\n" <<
            "age:" + to_string(student.age) + "\n" <<
            "gender:" + student.gender + "\n" <<
            "Faculty:" + student.group->course->major->faculty->name + "\n" <<
            "Major:" + student.group->course->major->name + "\n" <<
            "Course:" + to_string(student.group->course->course_number) + "\n" <<
            "Group:" + student.group->name + "\n";
}

void print_group(Group group) {
    cout << group.name << ":\n";
    for (auto& student : group.students) {
        print_student(student);
        cout << "\n";
    }
}

void print_course(Course course) {
    cout << course.course_number << ":\n";
    for (auto& group : course.groups) {
        print_group(group);
        cout << "\n";
    }
}

void print_major(Major major) {
    cout << major.name << ":\n";
    for (auto& course : major.courses) {
        print_course(course);
        cout << "\n";
    }
}

void print_faculty(Faculty faculty) {
    cout << faculty.name << ":\n";
    for (auto& major : faculty.majors) {
        print_major(major);
        cout << "\n";
    }
}

Student* select_student (Group* group) {
    if (group->students.empty()) {
        cout << "Group is empty" << endl;
        return nullptr;
    }
    student_point:
    cout << "Select student" << endl;
    string input;
    Student student;
    vector<Student*> students;
    vector<Student*> find_students;
    for (auto& student_it : group->students) {
        cout << student_it.id << ". " << student_it.name << " " << student_it.surname << endl;
        students.push_back(&student_it);
    }
    do {
        getline(cin, input);
        cin.ignore();
    } while (input.empty() || input == "\n" || input == "");


    if (!is_number(input)) {
        for (auto& student_it : students) {
            if (trim(student_it->name) == trim(input) || trim(student_it->surname) == trim(input)) {
                find_students.push_back(student_it);
                //cout << student.id << ". " << student.name << " " << student.surname << endl;
            }
        }
        if (find_students.size() > 0) {
            if (find_students.size() == 1) {
                return find_students[0];
            }
            if(find_students.size() > 1) {
                Group group2;
                for (auto& student_it : find_students) {
                    group2.students.push_back(*student_it);
                }
                Student* selected_student = select_student(&group2);
                if (selected_student == nullptr) {
                    return nullptr;
                }
                for (auto& student_it : find_students) {
                    if (student_it->id == selected_student->id) {
                        return student_it;
                    }
                }
            }
        }
    }
    else {
        for (auto& student_it : students) {
            if (student_it->id == stoi(input)) {
                return student_it;
            }
        }
    }
    goto student_point;
}

Group* select_group (Course* course) {
    if (course->groups.empty()) {
    cout << "Course is empty" << endl;
    return nullptr;
}
    major_point:
    cout << "Select group" << endl;
    string input;
    Group* group;
    int major_count = 0;
    vector<string> major_names;
    for (auto& major : course->groups) {
        cout << ++major_count << ". " << major.name << endl;
        major_names.push_back(major.name);
    }
    cin >> input;
    if (!is_number(input)) {
        for (int i = 0; i < major_names.size(); i++) {
            if (major_names[i] == trim(input)) {
                group = &course->groups[i];
            }
        }
    } else {
        if (stoi(input) <= major_count) {
            group = &course->groups[stoi(input) - 1];
        } else goto major_point;;
    }
    return group;
}

Course* select_course (Major* major) {
    if (major->courses.empty()) {
        cout << "Major is empty" << endl;
        return nullptr;
    }

    course_point:
    cout << "Select course" << endl;
    string input;
    Course* course;
    int course_count = 0;
    for (auto& course : major->courses) {
        cout << course.course_number << endl;
        course_count++;
    }
    cin >> input;
    if (is_number(input)) {
        if (stoi(input) <= course_count && stoi(input) > 0) {
            course = &major->courses[stoi(input) - 1];
        } else goto course_point;
    }
    return course;
}

Major* select_major (Faculty* faculty) {
    if (faculty->majors.empty()) {
        cout << "Faculty is empty" << endl;
        return nullptr;
    }
    major_point:
    cout << "Select major" << endl;
    string input;
    Major* major;
    int major_count = 0;
    vector<string> major_names;
    for (auto& major : faculty->majors) {
        cout << ++major_count << ". " << major.name << endl;
        major_names.push_back(major.name);
    }
    cin >> input;
    if (!is_number(input)) {
        for (int i = 0; i < major_names.size(); i++) {
            if (major_names[i] == trim(input)) {
                major = &faculty->majors[i];
            }
        }
    } else {
        if (stoi(input) <= major_count) {
            major = &faculty->majors[stoi(input) - 1];
        } else goto major_point;;
    }
    return major;
}

Faculty* select_faculty(University* university) {
    if (university->faculties.empty()) {
        cout << "University is empty" << endl;
        return nullptr;
    }
    faculty_point:
    cout << "Select faculty" << endl;
    Faculty* faculty;
    int faculty_count = 0;
    string input;
    vector<string> faculty_names;
    for (auto& faculty : university->faculties) {
        cout << ++faculty_count << ". " << faculty.name << endl;
        faculty_names.push_back(faculty.name);
    }
    cin >> input;
    if (!is_number(input)) {
        for (int i = 0; i < faculty_names.size(); i++) {
            if (faculty_names[i] == trim(input)) {
                faculty = &university->faculties[i];
            }
        }
    } else {
        if (stoi(input) <= faculty_count) {
            faculty = &university->faculties[stoi(input) - 1];
        } else goto faculty_point;
    }
    return faculty;
}

void delete_command(University* university) {
    string input;
    cout << "What do you want to delete\n"
            "1. Student\n"
            "2. Group\n"
            "3. Course\n"
            "4. Major\n"
            "5. Faculty\n";
    cin >> input;
    if (to_lower(input) == "student" || stoi(input) == 1) {
        cout << "Which student do you want to delete?\n";
        Faculty* faculty = select_faculty(university);
        if (faculty == nullptr) return;
        Major* major = select_major(faculty);
        if (major == nullptr) return;
        Course* course = select_course(major);
        if (course == nullptr) return;
        Group* group = select_group(course);
        if (group == nullptr) return;
        Student* student = select_student(group);
        if (student == nullptr) return;

        cout << "You want to delete: ";
        cout << student->name << " " << student->surname << endl;
        cout << "Are you sure?Y\\N\n";
        cin >> input;
        if (to_lower(input) == "y") {
            for (int i = 0; i < group->students.size(); i++) {
                if (&(group->students[i]) == student) {
                    group->students.erase(group->students.begin() + i);
                }
            }
        }
    }
    else if (to_lower(input) == "group" || stoi(input) == 2) {
        cout << "Which group do you want to delete?\n";
        Faculty* faculty = select_faculty(university);
        if (faculty == nullptr) return;
        Major* major = select_major(faculty);
        if (major == nullptr) return;
        Course* course = select_course(major);
        if (course == nullptr) return;
        Group* group = select_group(course);
        if (group == nullptr) return;
        cout << "You want to delete: ";
        cout << group->name << " in " << course->course_number << endl;
        cout << "Are you sure?Y\\N\n";
        cin >> input;
        if (to_lower(input) == "y") {
            for (int i = 0; i < course->groups.size(); i++) {
                if (&(course->groups[i]) == group) {
                    course->groups.erase(course->groups.begin() + i);
                }
            }
        }
    }
    else if (to_lower(input) == "course" || stoi(input) == 3) {
        cout << "Which course do you want to delete?\n";
        Faculty* faculty = select_faculty(university);
        if (faculty == nullptr) return;
        Major* major = select_major(faculty);
        if (major == nullptr) return;
        Course* course = select_course(major);
        if (course == nullptr) return;
        cout << "You want to delete: ";
        cout << course->course_number << " in " << major->name << endl;
        cout << "Are you sure?Y\\N\n";
        cin >> input;
        if (to_lower(input) == "y") {
            course->groups.clear();
        }
    }
    else if (to_lower(input) == "major" || stoi(input) == 4) {
        cout << "Which major do you want to delete?\n";
        Faculty* faculty = select_faculty(university);
        if (faculty == nullptr) return;
        Major* major = select_major(faculty);
        if (major == nullptr) return;
        cout << "You want to delete: ";
        cout << major->name << " in " << faculty->name << endl;
        cout << "Are you sure?Y\\N\n";
        cin >> input;
        if (to_lower(input) == "y") {
            for (int i = 0; i < faculty->majors.size(); i++) {
                if (&(faculty->majors[i]) == major) {
                    faculty->majors.erase(faculty->majors.begin() + i);
                }
            }
        }
    }
    else if (to_lower(input) == "faculty" || stoi(input) == 5) {
        cout << "Which faculty do you want to delete?\n";
        Faculty* faculty = select_faculty(university);
        if (faculty == nullptr) return;
        cout << "You want to delete: ";
        cout << faculty->name << endl;
        cout << "Are you sure?Y\\N\n";
        cin >> input;
        if (to_lower(input) == "y") {
            for (int i = 0; i < university->faculties.size(); i++) {
                if (&(university->faculties[i]) == faculty) {
                    university->faculties.erase(university->faculties.begin() + i);
                }
            }
        }
    }
}

void update_command(University* university) {
    string input;
    cout << "What do you want to update\n"
            "1. Student\n"
            "2. Group\n"
            "3. Major\n"
            "4. Faculty\n";
    cin >> input;
    if (to_lower(input) == "student" || stoi(input) == 1) {
        cout << "Which student do you want to update?\n";
        Faculty* faculty = select_faculty(university);
        if (faculty == nullptr) return;
        Major* major = select_major(faculty);
        if (major == nullptr) return;
        Course* course = select_course(major);
        if (course == nullptr) return;
        Group* group = select_group(course);
        if (group == nullptr) return;
        Student* student = select_student(group);
        if (student == nullptr) return;
        bool out = false;
        while (!out) {
            cout << "What do you want to update?\n";
            cout << "1. Name\n";
            cout << "2. Surname\n";
            cout << "3. Gender\n";
            cout << "4. Age\n";
            cout << "5. Group\n";
            cout << "6. Exit\n";
            cin >> input;
            input = trim(to_lower(input));
            if (input == "name" || stoi(input) == 1) {
                cout << "Enter new name:\n";
                cout << "Old name is: " << student->name << endl;
                cin >> input;
                student->name = input;
            } else if (input == "surname" || stoi(input) == 2) {
                cout << "Enter new surname:\n";
                cout << "Old surname is: " << student->surname << endl;
                cin >> input;
                student->surname = input;
            } else if (input == "gender" || stoi(input) == 3) {
                cout << "Enter new gender:\n";
                cout << "Old gender is: " << student->gender << endl;
                cin >> input;
                student->gender = input;
            } else if (input == "age" || stoi(input) == 4) {
                cout << "Enter new age:\n";
                cout << "Old age is: " << student->age << endl;
                cin >> input;
                student->age = stoi(input);
            }else if (input == "group" || stoi(input) == 5) {
                cout << "Select new course:\n";
                Faculty* new_faculty = select_faculty(university);
                Major* new_major = select_major(new_faculty);
                Course* new_course = select_course(new_major);
                Group* new_group = select_group(new_course);
                Group* old_group = student->group;
                student->group = new_group;
                new_group->students.push_back(*student);
                student = &(new_group->students.back());
                for (int i = 0; i < old_group->students.size(); i++) {
                    if (old_group->students[i].id == student->id) {
                        old_group->students.erase(old_group->students.begin() + i);
                    }
                }
            } else if (input == "exit" || stoi(input) == 6) {
                out = true;
            }
        }
    }
    else if (to_lower(input) == "group" || stoi(input) == 2) {
        cout << "Which group do you want to update?\n";
        Faculty* faculty = select_faculty(university);
        if (faculty == nullptr) return;
        Major* major = select_major(faculty);
        if (major == nullptr) return;
        Course* course = select_course(major);
        if (course == nullptr) return;
        Group* group = select_group(course);
        cout << "What do you want to update?\n";
        cout << "1. Group's name\n";
        cout << "2. Course for group\n";
        cin >> input;
        if (to_lower(input) == "name" || stoi(input) == 1) {
            cout << "Enter new group name:\n";
            cin >> input;
            group->name = input;
        } else if (to_lower(input) == "course" || stoi(input) == 2) {
            cout << "Select new Course";
            Faculty* new_faculty = select_faculty(university);
            if (new_faculty == nullptr) return;
            Major* new_major = select_major(new_faculty);
            if (new_major == nullptr) return;
            Course* new_course = select_course(new_major);
            if (new_course == nullptr) return;
            Course* old_course = course;
            group->course = new_course;
            new_course->groups.push_back(*group);
            for (int i = 0; i < old_course->groups.size(); i++) {
                if (&(old_course->groups[i]) == group) {
                    old_course->groups.erase(old_course->groups.begin() + i);
                }
            }
        }
    }
    else if (to_lower(input) == "major" || stoi(input) == 3) {
        cout << "Which major do you want to update?\n";
        Faculty* faculty = select_faculty(university);
        if (faculty == nullptr) return;
        Major* major = select_major(faculty);
        if (major == nullptr) return;
        cout << "What do you want to update?\n";
        cout << "1. Major's name\n";
        cout << "2. Faculty for major\n";
        cin >> input;
        if (to_lower(input) == "name" || stoi(input) == 1) {
            cout << "Enter new major name:\n";
            cin >> input;
            major->name = input;
        } else if (to_lower(input) == "faculty" || stoi(input) == 2) {
            cout << "Select new Faculty";
            Faculty* new_faculty = select_faculty(university);
            if (new_faculty == nullptr) return;
            Faculty* old_faculty = faculty;
            major->faculty = new_faculty;
            new_faculty->majors.push_back(*major);
            for (int i = 0; i < old_faculty->majors.size(); i++) {
                if (&(old_faculty->majors[i]) == major) {
                    old_faculty->majors.erase(old_faculty->majors.begin() + i);
                }
            }
        }
    }
    else if (to_lower(input) == "faculty" || stoi(input) == 4) {
        cout << "Which faculty do you want to update?\n";
        Faculty* faculty = select_faculty(university);
        if (faculty == nullptr) return;
        cout << "Enter new faculty name:\n";
        cin >> input;
        faculty->name = input;
    }
}

void read_command(University* university) {
    string input;
    cout << "What do you want to read\n"
            "1. Student\n"
            "2. Group\n"
            "3. Course\n"
            "4. Major\n"
            "5. Faculty\n";
    cin >> input;
    if (to_lower(input) == "student" || stoi(input) == 1) {
        cout << "Which student do you want to read?\n";
        Faculty* faculty = select_faculty(university);
        Major* major = select_major(faculty);
        Course* course = select_course(major);
        Group* group = select_group(course);
        Student* student = select_student(group);
        print_student(*student);
    }
    else if (to_lower(input) == "group" || stoi(input) == 2) {
        cout << "Which group do you want to read?\n";
        Faculty* faculty = select_faculty(university);
        Major* major = select_major(faculty);
        Course* course = select_course(major);
        Group* group = select_group(course);
        print_group(*group);
    }
    else if (to_lower(input) == "course" || stoi(input) == 3) {
        cout << "Which course do you want to read?\n";
        Faculty* faculty = select_faculty(university);
        Major* major = select_major(faculty);
        Course* course = select_course(major);
        print_course(*course);
    }
    else if (to_lower(input) == "major" || stoi(input) == 4) {
        cout << "Which major do you want to read?\n";
        Faculty* faculty = select_faculty(university);
        Major* major = select_major(faculty);
        print_major(*major);

    }
    else if (to_lower(input) == "faculty" || stoi(input) == 5) {
        cout << "Which course do you want to read?\n";
        Faculty* faculty = select_faculty(university);
        print_faculty(*faculty);

    }
}

void create_command(University* university) {
    string input;
    cout << "Enter what do you want to create" << endl;
    cout << "1. Student" << endl;
    cout << "2. Group" << endl;
    cout << "3. Course" << endl;
    cout << "4. Major" << endl;
    cout << "5. Faculty" << endl;
    cin >> input;
    if (to_lower(input) == "student" || stoi(input) == 1) {
        Student student;
        student.id = get_last_ID(*university) + 1;
        cout << "Enter student" << endl;
        cout << "Enter name" << endl;
        cin >> input;
        student.name = input;
        cout << "Enter surname" << endl;
        cin >> input;
        student.surname = input;
        cout << "Enter age" << endl;
        cin >> input;
        student.age = stod(input);
        cout << "Enter gender" << endl;
        cout << "1. male\n2. female\n";
        cin >> input;
        if (!is_number(input)){
            if (to_lower(input) == "male" || to_lower(input) == "m") {
                student.gender = "male";
            } else if (to_lower(input) == "female" || to_lower(input) == "f") {
                student.gender = "female";
            }
        } else {
            if (stoi(input) == 1) student.gender = "male";
            if (stoi(input) == 2) student.gender = "female";
        }
        cout << "Where studying this student?" << endl;
        Faculty* faculty = select_faculty(university);
        Major* major = select_major(faculty);
        Course* course = select_course(major);
        Group* group = select_group(course);

        student.group = group;
        group->students.push_back(student);
    }
    else if (to_lower(input) == "group" || stoi(input) == 2) {
        cout << "Where do you want to create group" << endl;
        Faculty* faculty = select_faculty(university);
        Major* major = select_major(faculty);
        Course* course = select_course(major);
        cout << "Input name of group" << endl;
        cin >> input;
        if (!is_number(input)) {
            Group group;
            group.name = input;
            group.course = course;
            course->groups.push_back(group);
        }
    }
    else if (to_lower(input) == "course" || stoi(input) == 3) {
        cout << "Where do you want to create course" << endl;
        Faculty* faculty = select_faculty(university);
        Major* major = select_major(faculty);
        cout << "Which course do you want to add? Now this major have: " << major->courses.size() << " courses" << endl;
        cin >> input;
        if (is_number(input)) {
            if (stoi(input) > major->courses.size()) {
                do {
                    Course course;
                    course.major = major;
                    course.groups = vector<Group>();
                    course.course_number = major->courses.size() + 1;
                    major->courses.push_back(course);
                } while (major->courses.size() < stoi(input));
            }
        }
    }
    else if (to_lower(input) == "major" || stoi(input) == 4) {
        cout << "Where do you want to create major" << endl;
        Faculty* faculty = select_faculty(university);
        cout << "Input name of major" << endl;
        cin >> input;
        if (!is_number(input)) {
            Major major;
            major.name = input;
            major.faculty = faculty;
            faculty->majors.push_back(major);
        }
    }
    else if (to_lower(input) == "faculty" || stoi(input) == 5) {
        cout << "Input name of faculty" << endl;
        cin >> input;
        if (!is_number(input)) {
            Faculty faculty;
            faculty.name = input;
            faculty.university = university;
            university->faculties.push_back(faculty);
        }
    }
}

#endif //COURSEWORK_COMMANDS_H

// 1 1 timur mirzaitov 20 male 1 1 1