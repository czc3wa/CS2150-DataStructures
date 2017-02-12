
using namespace std;
#include <iostream>
#include <list>
#include <vector>

class hashTab {
public:
	hashTab(unsigned int size);
	int hashFunction(string word);
	void insert(string word);
	bool find(string word);

	//primenumber methods copied over
	bool checkprime(unsigned int p);
	int getNextPrime (unsigned int n);

	
private:
	vector<list <string> > hashtable;
};

