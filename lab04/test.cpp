#include <iostream>
using namespace std;

class prelab4 {
public:
	void sizeOfTest() {
		int a;
		unsigned int b;
		float c;
		double d;
		char e;
		bool f;
		int* g;
		char* h;
		double* i;

		cout << "size of int is: " << sizeof(a) << endl;
		cout << "size of unsigned int is: " << sizeof(b) << endl;
		cout << "size of float is: " << sizeof(c) << endl;
		cout << "size of double is: " << sizeof(d) << endl;
		cout << "size of char is: " << sizeof(e) << endl;
		cout << "size of bool is: " << sizeof(f) << endl;
		cout << "size of int* is: " << sizeof(g) << endl;
		cout << "size of char* is: " << sizeof(h) << endl;
		cout << "size of double* is: " << sizeof(i) << endl;
		cout << "\n";

	}
	void outputBinary(unsigned int x) {
		for (int i = 31; i >= 0; i--) {
     	cout << ((x >> i) & 1);
     	}
     	cout << "\n";
	}
	void overflow() {
		unsigned int x = 4294967295;
		cout << "\n" << "overflow answer is: " << x + 1 << endl;
		cout << "answer to why: if you add one to " << "\n" << 
		"the maximum value of an unsigned int, you are essentially just " << "\n" << 
		"getting back the minimum value of an unsigned int." << endl;
	}
};


int main() {
	prelab4 Prelab4;
	Prelab4.sizeOfTest();
	cout << "please enter an integer:" << endl;
	unsigned int x;
	cin >> x;
	Prelab4.outputBinary(x);
	Prelab4.overflow();
	return 0;
}



	
