#include <iostream>
#include <stack>
#include "postfixCalculator.h"
using namespace std;

postfixCalculator::postfixCalculator(){
	operands = new stack<int>();
}

void pushNum(int e) {
	operands.push(e);
}

int top() {
	return operands.top();
}

void pop() {
	operands.pop();
}

bool empty(){
	return (operands.size() == 0);
}
	
void postfixCalculator::add() {

}
void postfixCalculator::subtract() {

}
void postfixCalculator::divide() {

}
void postfixCalculator::multiply() {

}
void postfixCalculator::negate() {

}



