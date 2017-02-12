//Corey Chen 9/21/16 bitCounter.cpp

#include <iostream>
#include <cmath>
using namespace std;

int bCount = 0;

void bitCounter(int num) {
	if (num == 1){
		bCount++;
		cout << bCount << endl;
	}

	else if (num%2 == 0) {
		bitCounter (num/2);
	}

	else if (num%2 == 1){
		bCount++;
		bitCounter (floor(num/2));
	}
	
}

int main(int argc, char *argv[]) {
	string p = argv[1];
	int l = stoi(p,nullptr);
	bitCounter(l);

	return 0;
}
