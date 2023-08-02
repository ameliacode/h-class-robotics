#include <iostream>
#include <vector>

using namespace std;
using matrix = vector<vector<double>>;

matrix multiply(matrix A, matrix B) 
{
    int n = A.size();
    int m = A[0].size();
    int p = B[0].size();

    matrix C(n, vector<double>(p,0));
    for(int i = 0; i < n; i++) {
        for (int j = 0; j < p; j++) {
            for (int k = 0; k < m; k++){
                C[i][j] += A[i][k] * B[k][j];
            }
        }
    }
    return C;
}

int main()
{
    matrix matA = {
        {1,2,3},
        {4,5,6},
        {7,8,9}
    };
    matrix matB = {
        {1,2,3},
        {1,2,3},
        {1,2,3}
    };

    matrix matC = multiply(matA, matB);

    for(int i = 0; i < matC.size(); ++i){
        for(int j = 0; j < matC[i].size(); ++j){
            cout << " " << matC[i][j];
        }
        cout << "\n";
    }
    return 0;
}