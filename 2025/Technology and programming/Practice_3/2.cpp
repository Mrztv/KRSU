// 2) Вычислить сумму четных элементов одномерного массива до первого встреченного нулевого элемента
#include <iostream>
#include <ctime>

using namespace std;

int main() {
    srand(time(NULL));
    int size_of_array = 100 + rand() % 100;
    int array[size_of_array];
    for (int i = 0; i < size_of_array; i++) {
        array[i] = rand() % 1000;
    }

    for (int i = 0; i < size_of_array; i++) {
        cout << array[i] << " ";
    }
    cout << endl;

    int sum = 0;
    for (int i = 0; i < size_of_array; i++) {
        if (array[i] == 0) break;
        if (array[i] % 2 == 0) {
            sum += array[i];
        }
    }

    cout << sum << endl;
    return 0;
}

