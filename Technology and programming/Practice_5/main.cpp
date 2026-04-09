#include <iostream>

using namespace std;

struct Student {
    string name;
    int number;
};

int main() {
    Student st1 = {"Alex", 19902};
    cout << st1.name << endl << st1.number << endl;


    return 0;
}