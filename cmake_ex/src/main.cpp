#include <iostream>
#include <cstdlib>
#include "mysquare.h"
#include "mysqrt.h"

using namespace std;

int main(int argc, char *argv[]) {
	if(argc < 2){
		cout<<"Usage: " << argv[0] << " number" << endl;
	}
	double inputVal = atof(argv[1]);
	cout << "The square of " << inputVal << " is " <<mysquare(inputVal) << " , and its square root is " <<mysqrt(inputVal) << endl;
	return 0;
}
