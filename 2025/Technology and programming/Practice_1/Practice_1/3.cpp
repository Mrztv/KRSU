#include <iostream>


int main() {
    double A[3][3] = {
        {1, 2, 3,},
        {4, 5, 6,},
        {7, 8, 9}
    };
    double max = A[0][0];
    int index_of_column = 0;

    for (int i = 0; i < std::size(A); i++) {
        for (int j = 0; j < std::size(A[i]); j++) {
            if (A[i][j] > max) {
                index_of_column = j;
                max = A[i][j];
            };
        }
    }

    double result = 0;
    for (int i = 0; i < std::size(A); i++) {
        result += A[i][index_of_column];
    }

    std::cout << "Result: " << result << std::endl;

}
