#include <iostream>
#include <string>
#include <ctype.h>
#include <stdlib.h>
using namespace std;

#include "List.h"
#include "ListItr.h"
#include "ListNode.h"
#include "List.cpp"
#include "ListNode.cpp"
#include "ListItr.cpp"

int   main (){
	
	List l = List();
	l.insertAtTail(4);
	l.insertAtTail(5);
	l.insertAtTail(6);
	l.insertAtTail(7);
	l.insertAtTail(8);
	l.insertAtTail(9);
	l.insertAtTail(10);
	cout << l.find(4).retrieve() << endl;



	
	
	// ListItr temp = l.first();
	// cout << temp.retrieve() << endl;
	// temp.moveForward();
	// cout << temp.retrieve() << endl;
	
	
	// temp.moveForward();
	// cout << temp.retrieve() << endl;
	
	// // temp.moveForward();
	// // cout << temp.retrieve() << endl;
	// temp.moveForward();
	// cout << temp.retrieve() << endl;
	// temp.moveForward();
	// cout << temp.retrieve() << endl;
	//printList(l, false);
	// cout << "hi" << endl;
	//ListItr itr = ListItr(l.head);
	//cout << itr.current << endl;
	return 0;
}