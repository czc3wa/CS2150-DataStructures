//Corey Chen 9/21/16 inlab4.cpp

#include <iostream>
using namespace std;


//how to Change an int value from positive to negative
//use "expr" in debugger for lldb

int main() {


  bool b = false;

  char c = '0';
 
  int i = 2147483647;

  double d = 0;

  int* ip = &i;

  cout << "bool: " << b << endl;
  cout << "char: " << c << endl;
  cout << "int: " << i << endl;
  cout << "double: " << d << endl;
  cout << "int* : " << ip << endl;


////////////////////////////////////////////////////////////////
//PART 2



int IntArray[10] = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10};
char CharArray[10] = {'A', '2', '3', '4', '5', '6', '7', '8', '9', 'j'};

int IntArray2D[6][5] = {{1, 2, 3, 4, 5}, 
                        {2, 4, 5, 6, 7}, 
                        {4, 4, 5, 6, 7},
                        {343, 4, 5, 6, 7}, 
                        {23, 4, 5, 6, 7}, 
                        {2, 4, 5, 6, 7}};
char CharArray2D[6][5] = {{'1', '2', '3', '4', '4'}, 
                          {'a', 'b', 'c', 'd', 's'},
                          {'1', '2', '3', '4', '4'}, 
                          {'1', '2', '3', '4', '4'},
                          {'1', '2', '3', '4', '4'}, 
                          {'1', '2', '3', '4', '4'}}; 

cout << IntArray << IntArray2D << CharArray << CharArray2D << endl;


  return 0;
}









