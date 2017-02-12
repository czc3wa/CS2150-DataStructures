// This should be compiled with the -m32 flag, so as to make the
// pointer a 32-bit memory address.

#include <iostream>
using namespace std;

union foo {
    float f;
    short s;
}x;

int main() {
    x.f = 90.25;
    cout << x.s << endl;
       ///cout << (short) 80.25 << endl;
    return 0;

}


