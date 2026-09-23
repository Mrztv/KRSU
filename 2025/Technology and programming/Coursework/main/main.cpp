#include <iostream>
#include <fstream>
#include "../utils/structs.h"
#include "../utils/commands.h"
#include "../Json/JsonReader.h"
#include "../Json/JsonWriter.h"

using namespace std;



int main() {
    University my_uni = get_university_from_JSON();

    while (true) {
        cout << "What do you want to do?" << endl;
        cout << "1. Create\n"
                "2. Read\n"
                "3. Update\n"
                "4. Delete\n"
                "5. Exit\n"
                "6. Save\n";
        string input;
        getline(cin,input);
        Commands command = resolveCommand(input);
        switch (command) {
            case static_cast<int>(Create) :
                create_command(&my_uni);
                write_JSON_from_university(my_uni);
                my_uni = get_university_from_JSON();
                cin.ignore();
                break;
            case static_cast<int>(Read) :
                read_command(&my_uni);
                cin.ignore();
                break;
            case static_cast<int>(Update) :
                update_command(&my_uni);
                write_JSON_from_university(my_uni);
                my_uni = get_university_from_JSON();
                cin.ignore();
                break;
            case static_cast<int>(Delete) :
                delete_command(&my_uni);
                write_JSON_from_university(my_uni);
                my_uni = get_university_from_JSON();
                cin.ignore();
                break;
            case static_cast<int>(Exit) :
                write_JSON_from_university(my_uni);
                return 1;
            case static_cast<int>(Save) :
                write_JSON_from_university(my_uni);
                my_uni = get_university_from_JSON();
                break;
            default:
                break;
        }
    }
    return 0;
}