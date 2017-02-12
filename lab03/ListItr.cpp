//Corey Chen 9/8/16 ListItr.cpp

#include <iostream>
#include "List.h"
#include "ListNode.h"
#include "ListItr.h"
using namespace std;

ListItr::ListItr(){
	current = NULL;
 }	

 // One parameter constructor
ListItr::ListItr(ListNode* theNode){
	current = theNode;
 }	
    
//Returns true if past end position// in list, else false
bool ListItr::isPastEnd() const{
	if (current->next == NULL) {
		return true;
	}
	else {
		return false;
	}
}
    
//Returns true if past first position
// in list, else false    
bool ListItr::isPastBeginning() const{
	if (current->previous == NULL) {
		return true;
	}
	else {
		return false;
	}
}

//Advances current to next position in list
//(unless already past end of list)    
void ListItr::moveForward(){
	if (!isPastEnd()) {
		current = current->next;
	}
}

//Moves current back to previous position
    // in list (unless already past beginning of
    // list)
void ListItr::moveBackward(){
	if (!isPastBeginning()) {
		current = current->previous;
	}
}	

//Returns item in current position    
int ListItr::retrieve() const{
	return current->value;
}





