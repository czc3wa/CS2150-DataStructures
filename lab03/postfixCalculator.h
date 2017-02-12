//Corey Chen 9/13/16 postfixCalculator.h
#include <iostream>
#include "stack.h"
using namespace std;

class postfixCalculator {
public:
	//constructor
	postfixCalculator();
	void pushNum(int e);
	int top();
	void pop();
	bool empty();
	void add();
	void subtract();
	void divide();
	void multiply();
	void negate();

private:
	stack *operands;
};