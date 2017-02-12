#include <iostream>
#include "hashTable.h"
#include <list>
using namespace std;

hashTab::hashTab(unsigned int size) {
	int a = getNextPrime (size);
	hashtable.resize(a);
}

int hashTab::hashFunction(string word) {
	int sum = 0;
    for (int k = 0; k < word.length(); k++) {
    	sum = sum + int(word[k]);
    }
    return  sum % hashtable.size(); 
}

void hashTab::insert(string word) {
	int hf = hashFunction(word);
	(hashtable[hf]).push_back(word);
}

bool hashTab::find(string word) {
	int hf = hashFunction(word);

	//size of linked list at the position in the hashtable given by hf. 
	// int size = hashtable.at(hf).size()
	// for (int x = 0; x < size; x++) {
	list<string>::iterator it;
	for(it=(hashtable.at(hf)).begin(); it!=(hashtable.at(hf)).end(); it++) {
		if (word == *it) {
			return true;
		}
	
	}
	return false;


}

bool hashTab::checkprime(unsigned int p) {
    if ( p <= 1 ) // 0 and 1 are not primes; the are both special cases
        return false;
    if ( p == 2 ) // 2 is prime
        return true;
    if ( p % 2 == 0 ) // even numbers other than 2 are not prime
        return false;
    for ( int i = 3; i*i <= p; i += 2 ) // only go up to the sqrt of p
        if ( p % i == 0 )
            return false;
    return true;
}

int hashTab::getNextPrime (unsigned int n) {
    while ( !checkprime(++n) );
    return n; // all your primes are belong to us
}





		






