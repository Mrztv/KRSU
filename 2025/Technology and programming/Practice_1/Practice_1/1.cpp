#include <iostream>

int main() {
    double A[3][4] = {{10,20,30,40},
    {50,60,70,80},
    {90,100,110,120}};
    double input, result=0;


    for (int i =0; i < std::size(A); i++) {
        for (int j =0; j < std::size(A[i]); j++) {
            std::cout << A[i][j] << "\t";
        }
        std::cout << std::endl;
    }

    std::cout << "Input number for filter" << std::endl;
    std::cin >> input;

    for (int i = 0; i < std::size(A); i++) {
        for (int j = 0; j < std::size(A[i]); j++) {
            if (A[0][j] < input) continue;
            result += A[i][j];
        }
    }

    std::cout << "Result: " << result << std::endl;

    return 0;
}