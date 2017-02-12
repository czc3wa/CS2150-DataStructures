#include <iostream>
#include <time.h>
#include <cstdlib>
#include <timer.h>

using namespace std;

extern "C" long threexplusone (long);

int  main () {

	long  n1, n2, steps;
    cout << "Please enter an integer for x:  " << endl;
    cin >> n1;

    cout << "Please enter an integer for n:  " << endl;
    cin >> n2;
    steps = threexplusone(n2); 
    cout << "an input " << n2 << " took " << steps << " steps." << endl;

    // long sum;
    // timer timerr;
    // timerr.start();
    // for (int i = 0; i < n1; i++) {
    // 	threexplusone(n2);
    // }
    // timerr.stop();


    // cout << "average time was:  " << timerr.getTime()/n1 << endl;

return 0;
}