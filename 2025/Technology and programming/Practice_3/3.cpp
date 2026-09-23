//
// Подсчитать кол-во элементов одномерного массива которые совпадают со своим номером и при этом кратны трем
//
#include <iostream>
#include <ctime>

using namespace std;

int main() {
    srand(time(NULL));
    int size_of_array = rand() % 1000 + 1;
    int count = 0;
    int array[size_of_array];
    for (int i = 0; i < size_of_array; i++) {
        array[i] = rand() % 1000 + 1;
    }

    for (int i = 0; i < size_of_array; i++) {
        cout << array[i] << " ";
    }
    cout << endl;

    for (int i = 0; i < size_of_array; i++) {
        if (array[i] == i + 1 && array[i]%3==0) count++;
    }
    cout << count << endl;
    return 0;
}