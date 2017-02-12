#include <iostream>
#include <string>
using namespace std;

void someFunc(int *somePointer) {
    int someVal(12);
    cout << somePointer << endl;
    {
        int anotherVal(16);
        somePointer = &anotherVal;
    }
        cout << somePointer << endl;

}

int main() {
    int * yetAnotherPtr;


    
    cout << yetAnotherPtr << endl;
    someFunc(yetAnotherPtr);
    //cout << *yetAnotherPtr << endl;
    return 0;
}