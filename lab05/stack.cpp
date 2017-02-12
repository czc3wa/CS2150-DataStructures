//Corey Chen 9/14/16 stack.cpp

#include <iostream>
#include "List.h"
#include "ListItr.h"
#include "stack.h"
using namespace std;

stack::stack() {
	stk = new List();
}

void stack::push(int e) {

	stk->insertBefore(e, stk->first());
}

int stack::top() {
	ListItr temp = stk->first();
	return (temp.retrieve());

}

void stack::pop(){
	ListItr temp = stk->first();
	stk->remove(temp.retrieve());

}

bool stack::empty() {
	return (stk->size() == 0);
}

