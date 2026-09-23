#include <iostream>
#include <cmath>

int main() {
    double A[3][4] = {
        {-12, 1, 0, 5},
        {2, 3, 5, 1},
        {-2, 3, 5, 6}
    };
    double result = 0;
    bool is_set = false;

    for (int i = 0; i < std::size(A); i++) {
        double max = 1;
        if (A[i][0] < 0) {
            max = A[i][0];
            for (int j = 0; j < std::size(A[i]); j++) {
                max = std::max(max, A[i][j]);
            }
        }
        if (is_set) {
            result *= max;
        } else {
            result = max;
            is_set = true;
        }
    }

    std::cout << "Result: " << result << std::endl;

}
