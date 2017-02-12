#include <iostream>
#include <fstream>
#include <sstream>
#include <stdlib.h>
#include <unordered_map>
using namespace std;

int main () {
	unordered_map<string, string> map;
	unordered_map<string, string>::iterator find;
	map["poo"] = "pee";
	map["poo"] = "pop";
	map["poop"] = "pee";
	find = map.find("poo");
	string q = find->second;
	cout << q << endl;
	return 0;
}


