#include <iostream>
using namespace std;

int product(int x, int y);
int productRef(int &x, int &y);

int a = 1;
int b = 2;
int &x = a;
int &y = b;

int main () {
  cout << product(a,b) << endl;
  cout << productRef(x,y) << endl;
  return 0;
}

int product(int x, int y){
  return x*y;
}

int productRef(int &x, int &y){
  return x*y;
}