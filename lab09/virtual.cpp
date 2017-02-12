#include <iostream>
#include <stdlib.h>
using namespace std;

class Animal {
public:
	virtual string className() {
		return "Animal";
	}
	virtual int return0Then1() {
		return 0;
	}
};

class Dog: public Animal {
public:
	string className() {
		return "Dog";
	}
	int return0Then1() {
		return 1;
	}
};

int main() {
    string n;
    Animal *p;
    cout << "please enter 'yes' to create an Animal" 
          << endl << " or 'no' to create a Dog" << endl;  
    cin >> n;
      if (n == "yes") {
        p = new Animal();
      }
      else if (n == "no") {
        p = new Dog();
      }
    p->className();
    p->return0Then1();
    return 0;
}