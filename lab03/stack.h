//Corey Chen 9/14/16 stack.h

#include <iostream>
#include "List.h"
#include "ListItr.h"
using namespace std;

class stack {
public:
	stack();
	void push(int e);
	int top();
	void pop();
	bool empty();

private:
	List *stk;
};