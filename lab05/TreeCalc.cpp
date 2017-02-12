// Insert your header information here
// TreeCalc.cpp:  CS 2150 Tree Calculator method implementations

#include "TreeCalc.h"
#include <iostream>
#include <cstdlib>

using namespace std;

//Constructor
TreeCalc::TreeCalc() {
    stack<TreeNode*> mystack;

}

//Destructor- frees memory
TreeCalc::~TreeCalc() {
    if (mystack.size() > 0){
        cleanTree(mystack.top());
        mystack.pop();
    }

}

//Deletes tree/frees memory
void TreeCalc::cleanTree(TreeNode* ptr) {
    if (mystack.size() > 0){
        if (ptr != NULL) {
            cleanTree(ptr->right);
            cleanTree(ptr->left);
            delete ptr;
        }
    }

}

//Gets data from user
void TreeCalc::readInput() {
    string response;
    cout << "Enter elements one by one in postfix notation" << endl
         << "Any non-numeric or non-operator character,"
         << " e.g. #, will terminate input" << endl;
    cout << "Enter first element: ";
    cin >> response;
    //while input is legal
    while (isdigit(response[0]) || response[0]=='/' || response[0]=='*'
            || response[0]=='-' || response[0]=='+' ) {
        insert(response);
        cout << "Enter next element: ";
        cin >> response;
    }
}

//Puts value in tree stack
void TreeCalc::insert(const string& val) {
    // insert a value into the tree
    if (isdigit(val[0]) || (  (val.size() >= 2) && (val[0] == '-' && isdigit(val[1]))  ) ) {
        mystack.push(new TreeNode(val));
    }
    else {
        TreeNode *rght = mystack.top();
        mystack.pop();
        TreeNode *lft = mystack.top();
        mystack.pop();
        TreeNode *oprtr = new TreeNode(val);
        oprtr->right = rght;
        oprtr->left = lft;
        mystack.push(oprtr);
    }

}

//Prints data in prefix form
void TreeCalc::printPrefix(TreeNode* ptr) const {
    // print the tree in prefix format
    if (ptr != NULL) {
        cout << (ptr->value + " ");
        printPrefix(ptr->left);
        printPrefix(ptr->right);
    }

}

//Prints data in infix form
void TreeCalc::printInfix(TreeNode* ptr) const {
    // print tree in infix format with appropriate parentheses
    if (ptr != NULL) {
        if ((ptr->value[0] == '+' || ptr->value[0] == '/' || ptr->value[0] == '*' 
            || ptr->value[0] == '-') && ptr->value.size() == 1){
            cout << "(";
            printInfix(ptr->left);
            cout << " " + (ptr->value) + " ";
            printInfix(ptr->right);
            cout << ")";
        }
        
        else {
            printInfix(ptr->left);
            cout << (ptr->value);
            printInfix(ptr->right);
        }
    }
}

//Prints data in postfix form
void TreeCalc::printPostfix(TreeNode* ptr) const {
    // print the tree in postfix form
    if (ptr != NULL) {
        printPostfix(ptr->left);
        printPostfix(ptr->right);
        cout << (ptr->value + " ");
    }

}

// Prints tree in all 3 (pre,in,post) forms

void TreeCalc::printOutput() const {
    if (mystack.size()!=0 && mystack.top()!=NULL) {
        cout << "Expression tree in postfix expression: ";
        printPostfix(mystack.top()); // call your implementation of printPostfix()
        cout << endl;
        cout << "Expression tree in infix expression: ";
        printInfix(mystack.top()); // call your implementation of printInfix()
        cout << endl;
        cout << "Expression tree in prefix expression: ";
        printPrefix(mystack.top());  // call your implementation of printPrefix()
        cout << endl;
    } else
        cout<< "Size is 0." << endl;
}

//Evaluates tree, returns value
// private calculate() method
int TreeCalc::calculate(TreeNode* ptr) const {
    if (isdigit(ptr->value[0]) || ((ptr->value.size() >= 2) && (ptr->value[0] == '-' && isdigit(ptr->value[1]) )) ) {
        return atoi(ptr->value.c_str());
    }
    else if (ptr->value[0] == '+') {
        return calculate(ptr->left) + calculate(ptr->right);
    }

    else if (ptr->value[0] == '/') {
        return calculate(ptr->left) / calculate(ptr->right);
    }

    else if (ptr->value[0] == '-') {
        return calculate(ptr->left) - calculate(ptr->right);
    }

    else {
        return calculate(ptr->left) * calculate(ptr->right);
    }
    // Traverse the tree and calculates the result
}

//Calls calculate, sets the stack back to a blank stack
// public calculate() method. Hides private data from user
int TreeCalc::calculate() {
    return calculate(mystack.top());// call private calculate method here
}