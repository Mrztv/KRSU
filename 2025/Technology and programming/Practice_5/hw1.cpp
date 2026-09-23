//
// Created by timur on 10.04.2026.
//

#include <iostream>
#include <cmath>

using namespace std;

struct Point {
    double x;
    double y;
};

int main() {
    Point p1, p2;
    cout << "Enter points: \n";
    cin >> p1.x >> p1.y;
    cin >> p2.x >> p2.y;
    double length = sqrt( (p1.x - p2.x) * (p1.x - p2.x) + (p1.y - p2.y) * (p1.y - p2.y) );
    cout << length << endl;
}


// в ведомости указана зарплата вывплаченная каждому из сотрудников фирмы за месяц, определить общую сумму выплаченных по ведомости денег