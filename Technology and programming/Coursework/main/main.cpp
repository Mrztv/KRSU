#include <iostream>
#include <fstream>
#include <vector>
#include "../utils/structs.h"
#include "../Json/JsonReader.h"
#include "../Json/JsonWriter.h"
#include "../utils/commands.h"

using namespace std;



int main() {
    //student my_student = {"timur", "mirzaitov", "male", 20, 1, "ETF", "Software Engineering"};
    // cout << endl << "*****************" << endl;
    // cout << '\0' << endl;
    // cout << "**********" << endl;

    University my_uni = get_university_from_JSON();
    //write_JSON_from_university(my_uni);


    Student* my_test_student = &my_uni.faculties[0].majors[0].courses[0].students[0];
    // cout << my_test_student->name << endl;
    // cout << my_test_student->course->major->faculty->university->name << endl;

    vector<Student> students;
    for (auto& faculty : my_uni.faculties) {
        for (auto& major : faculty.majors) {
            for (auto& course : major.courses) {
                for (auto& student : course.students) {
                    students.push_back(student);
                }
            }
        }
    }


    while (true) {
        cout << "What do you want to do?" << endl;
        cout << "1. Create\n2. Read\n3. Update\n4. Delete\n5. Exit\n6. Save\n";
        string input;
        getline(cin,input);
        Commands command = resolveCommand(input);
        switch (command) {
            case static_cast<int>(Create) :
                create_command(&my_uni);
                write_JSON_from_university(my_uni);
                cin.ignore();
                break;
            case static_cast<int>(Read) :
                read_command(&my_uni);
                cin.ignore();
                break;
            case static_cast<int>(Update) :
                update_command(&my_uni);
                cin.ignore();
                break;
            case static_cast<int>(Delete) :
                delete_command(&my_uni);
                cin.ignore();
                break;
            case static_cast<int>(Exit) :
                write_JSON_from_university(my_uni);
                return 1;
            case static_cast<int>(Save) :
                write_JSON_from_university(my_uni);
                break;
            default:
                break;
        }
    }

    return 0;
}