#include <iostream>
#include <ctime>

using namespace std;

int main() {
    srand(time(NULL));
    int a[10];
    for (int i = 0; i < 10; i++) {
        a[i] = rand() % 100;
    }

    for (int i = 0; i < 10; i++) {
        cout << a[i] << " " << endl;
    }
    return 0;
}