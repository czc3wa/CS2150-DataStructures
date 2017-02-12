//Corey Chen 9/13/16 postfixCalculator.

#include <iostream>
#include "postfixCalculator.h"
using namespace std;

postfixCalculator::postfixCalculator(){
	 operands = new stack();
}

void postfixCalculator::pushNum(int e) {
	operands->push(e);
}

int postfixCalculator::top() {
	if (operands->empty()) {
		exit(-1);
	}
	return operands->top();
}

void postfixCalculator::pop() {
	if (operands->empty()) {
		exit(-1);
	}
	operands->pop();
}

bool postfixCalculator::empty(){
	return (operands->empty());
}
	
void postfixCalculator::add() {
	int a, b, c;
	a = operands->top();
	operands->pop();
	b = operands->top();
	operands->pop();
	c = a + b;
	operands->push(c);

}
void postfixCalculator::subtract() {
	int a, b, c;
	a = operands->top();
	operands->pop();
	b = operands->top();
	operands->pop();
	c = b - a;
	operands->push(c);

}
void postfixCalculator::divide() {
	int a, b, c;
	a = operands->top();
	operands->pop();
	b = operands->top();
	operands->pop();
	c = b / a;
	operands->push(c);

}
void postfixCalculator::multiply() {
	int a, b, c;
	a = operands->top();
	operands->pop();
	b = operands->top();
	operands->pop();
	c = a * b;
	operands->push(c);

}
void postfixCalculator::negate() {
	int a, b;
	a = operands->top();
	operands->pop();
	b = a * -1;
	operands->push(b);

}


