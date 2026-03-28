#include <iostream>
#include <ctime>

using namespace std;

int main() {
    srand(time(NULL));
    int M, N;
    cout << "Enter number of rows and columns: \n";
    cin >> M >> N;
    int A[M][N];
    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            A[i][j] = -1000 + rand() % 2000;
        }
    }

    for (int i = 0; i < M; i++) {
        for (int j = 0; j < N; j++) {
            cout << A[i][j] << " ";
        }
        cout << endl;
    }
    int index_of_min_column;
    int min_positive = M + 1;
    int count_positive = 0;

    for (int j = 0; j < N; j++) {
        count_positive = 0;
        for (int i = 0; i < M; i++) {
            if (A[i][j] > 0) {
                count_positive++;
            }
        }
        if (min_positive > count_positive) {
            min_positive = count_positive;
            index_of_min_column = j;
        }
        if (min_positive == 0) break;
    }

    cout << "Searched index is: " << index_of_min_column << endl;


    return 0;
}
