#ifndef JSONREADER_H
#define JSONREADER_H
#include "../utils/structs.h"

#include <map>
#include <string>
#include <variant>
#include <vector>

using namespace std;

// const string JSONType[6] =  {
//     "json_string",
//     "json_boolean",
//     "json_number",
//     "json_null",
//     "json_array",
//     "json_object"
// };

struct JSON_Value;
using JSON_Array = vector<JSON_Value>;
using JSON_Object = map<string, JSON_Value>;

struct JSON_Value {
    variant<
        string,
        bool,
        double,
        nullptr_t,
        JSON_Array,
        JSON_Object
        > content;
};

University get_university_from_JSON();

JSON_Value parse_array(string::iterator &i);

JSON_Value parse_string(string::iterator& i) ;

JSON_Value parse_number(string::iterator& i);

JSON_Value parse_null(string::iterator& i);

JSON_Value parse_boolean(string::iterator& i);

JSON_Value parse_value(string::iterator& i);

JSON_Value parse_object(string::iterator& i);

vector<Student> create_students(JSON_Value& v);

vector<Course> create_courses(JSON_Value& v);

vector<Major> create_majors(JSON_Value& v);

vector<Faculty> create_faculties(JSON_Value& v);

University create_university(JSON_Value& v);



#endif //JSONREADER_H