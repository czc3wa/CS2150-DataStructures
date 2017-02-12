//Corey Chen 9/8/16 List.cpp

#include <iostream>
#include "List.h"
#include "ListNode.h"
#include "ListItr.h"
#include "stack"
using namespace std;


//Constructor
List::List() {

	head = new ListNode();
	tail = new ListNode();
	head->value = -1;
	tail->value = 1;
	head->next = tail;
	tail->previous = head;
	count=0;
	
}			
//********************************************
List::~List() {

	makeEmpty();
	delete head;
	delete tail;

}
//********************************************

List::List(const List& source){
	head=new ListNode;
    tail=new ListNode;
    head->next=tail;
    tail->previous=head;
    count=0;
    ListItr iter(source.head->next);
    while (!iter.isPastEnd()) {       // deep copy of the list
        insertAtTail(iter.retrieve());
        iter.moveForward();
    }
}

//Equals Operator
List& List::operator=(const List& source){
	if (this == &source)
        return *this;
    else {
        makeEmpty();
        ListItr iter(source.head->next);
        while (!iter.isPastEnd()) {
            insertAtTail(iter.retrieve());
            iter.moveForward();
        }
    }
    return *this;
}	

//Returns true if empty; else false
bool List::isEmpty() const{
	return (count == 0);
}		
//********************************************

//Removes all items except blank head and tail
void List::makeEmpty(){
	ListItr temp = first();
	

	while (!temp.isPastEnd()) {
		temp.current->previous->next = temp.current->next;
		temp.current->next->previous = temp.current->previous;
		delete temp.current;
		temp.moveForward();
	}
	count = 0;
	
}	
/*
ListItr temp = first();
	temp.moveForward();
	ListNode *del = temp.current;

	while (temp.isPastEnd() == false) {
		delete del->previous;
		if (del->next == tail){
			delete del;
		}
		temp.moveForward();
		
	}
	head->next = tail;
	tail->previous =head;
*/
//********************************************

//Returns an iterator that points to the ListNode in the first position
ListItr List::first(){
	return (ListItr(head->next));

}	
    
//Returns an iterator that points to
//the ListNode in the last position
ListItr List::last(){
	return (ListItr(tail->previous));
}			

//Inserts x after current iterator position p
void List::insertAfter(int x, ListItr position){
	ListNode *xNode = new ListNode();
	ListNode *pos = position.current;

	xNode->previous = pos;
	xNode->next = pos->next;
	pos->next = xNode;
	pos->next->previous = xNode;
	xNode->value = x;

	count++;
}

//Inserts x before current iterator position p
void List::insertBefore(int x, ListItr position){
	ListNode *xNode = new ListNode();
	ListNode *pos = position.current;

	xNode->previous = pos->previous;
	xNode->next = pos;
	pos->previous->next = xNode;
	pos->previous = xNode;
	xNode->value = x;

	count++;
}

//Insert x at tail of list
void List::insertAtTail(int x){
	ListNode *xNode = new ListNode();

	
	xNode->previous = tail->previous;
	xNode->next = tail;
	(tail->previous)->next = xNode;
	tail->previous = xNode;
	xNode->value = x;
	
	count++;
	
}
//********************************************

//Removes the first occurrence of x
// **************make sure it points to the one after it, the one that was deleted
void List::remove(int x){
	ListItr temp = first();
	temp = find(x);
	if (find(x).current != tail) {
		ListNode *occur = temp.current;
		cout << occur->value <<endl;
		occur->previous->next = occur->next;
		occur->next->previous = occur->previous;
		delete occur;
	}
	count--;
	
}	
//********************************************

//Returns an iterator that points to
// the first occurrence of x, else return a iterator to the dummy tail node
ListItr List::find(int x){

	ListItr temp = ListItr(head);
	while (temp.current != tail) {

		if (temp.current->value == x) {
			return temp;
		}

		else {
			temp.moveForward();
		}
	}
	return tail;

}	
    
//Returns the number of elements in the list
int List::size() const{
	return count;

}

void printList(List& source, bool direction){
	if (!source.isEmpty()) {
		ListItr f = source.first();
		ListItr b = source.last();
		if (direction == true){
			while (f.isPastEnd() == false) {                                                                                                                
				cout << f.retrieve() << endl;
				f.moveForward();
			}

		}
		else {
			while (b.isPastBeginning() == false) {                                                                                                                
				cout << b.retrieve() << endl;
				b.moveBackward();
			}
		}
	}
}




