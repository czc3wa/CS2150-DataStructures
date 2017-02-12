#include <iostream>
#include <time.h>
#include <cstdlib>

using namespace std;

extern "C" long threexplusone (long);

int  main () {

	long  n1, steps;
	cout << "Please enter a integer:  ";
    cin >> n1;
    steps = threexplusone(n1);
    cout << "an input " << n1 << " took " << steps << " steps." << endl;

return 0;
}