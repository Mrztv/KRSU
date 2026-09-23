/*Вычислить среднее арифмитическое значение тех элементов одномерного массива которые попадают в интервал от 10 до 20*/

#include <iostream>
#include <ctime>

using namespace std;

int main () {
    srand(time(NULL));
    int size_of_array = rand() % 100;
    int a[size_of_array];
    cout << "Generating array with length: " << size_of_array << endl;
    for (int i = 0; i < size_of_array; i++) {
        a[i] = rand() % 100;
    }
    for (int i = 0; i < size_of_array; i++) {
        cout << a[i] << " ";
    }
    cout << endl;

    int sum = 0;
    int count = 0;
    for (int i = 0; i < size_of_array; i++) {
        if (a[i]>=10 && a[i]<=20) {
            sum += a[i];
            count++;
        }
    }
    double average = (double) sum / count;
    cout << "Average value: " << average << endl;
    return 0;
}

