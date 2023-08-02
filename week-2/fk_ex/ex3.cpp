#include <iostream>
#include <vector>
#include "dh.hpp"

using namespace std;

int main(int argc, char* argv[]) 
{
    int num_inputs = 6;
    if(argc != (num_inputs + 1)){
        cout << "Invalid number of arguments. expected " << num_inputs << endl;
        return -1;
    }

    vector<double> theta;
    for(int i =1; i<= num_inputs; i++){
        theta.push_back(atof(argv[i]));
    }

    double a2 = 1;
    double a3 = 1;
    double d3 = 0.2;
    double d4 = 0.2;

    //RRRP theta 3개와 d를 인자로 받는 프로그램을 작성하시오.
    Eigen::Matrix4d T06 = 
        DH(          0,  0,  0,theta[0]) *
        DH(-EIGEN_PI/2,  0,  0,theta[1]) *
        DH(          0, a2, d3,theta[2]) *
        DH(-EIGEN_PI/2, a3, d4,theta[3]) *
        DH( EIGEN_PI/2,  0,  0,theta[4]) *
        DH(-EIGEN_PI/2,  0,  0,theta[5]);
    cout << T06 << endl;
    return 0;
}
