//corey chen 10/16/16 lab 107

#include <iostream>
#include <list>
#include <vector>

using namespace std;

class hashTab {
public:
	hashTab(unsigned int size);
	int hashFunction(string word);
	void insert(string word);
	bool find(string word);

	//primenumber methods copied over
	bool checkprime(unsigned int p);
	int getNextPrime (unsigned int n);
	void getPwrs37();
	int retrieve37Pwrs(int index);


	
// private:
// 	friend class wordPuzzle;
	vector<list <string> > hashtable;
	int threeSeven[22];
};

