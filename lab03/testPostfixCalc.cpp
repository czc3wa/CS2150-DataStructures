//Corey Chen 9/13/16 testPostfixCalc.cpp

#include <iostream>
#include "postfixCalculator.h"
#include <cstdlib>
#include <string>
using namespace std;


int main() {
    postfixCalculator p;

    while (cin.good()) {
        string s;
    	cin >> s;


        if ( (s.c_str()[0] == '-' && isdigit(s.c_str()[1])) || isdigit(s.c_str()[0])) {
           p.pushNum(atoi(s.c_str()));
        }
        
        if (s == "+") {
            p.add();
        }

        if (s == "-") {
            p.subtract();
        }

        if (s == "*")  {
            p.multiply();
        }

        if (s == "/") {
            p.divide();
        }

        if (s == "~") {
            p.negate();
        }

    }
            
    	    
    cout << p.top() << endl;

    return 0;
 }
    

	
	