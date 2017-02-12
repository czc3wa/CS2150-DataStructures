//Corey Chen 9/8/16 ListNode.cpp

#include <iostream>
#include "List.h"
#include "ListNode.h"
#include "ListItr.h"
using namespace std;

ListNode::ListNode() {
	value = 0;
	previous = NULL;
	next = NULL;
}