//corey chen 10/16/16 lab 107

#include <iostream>
#include "hashTable.h"
#include <list>
#include <cmath>
using namespace std;

hashTab::hashTab(unsigned int size) {
	int a = getNextPrime (size);
	hashtable.resize(a);
}

//calculae powers of prime numbers up to power of 22
//store values into an array

 //name of method is getpwrs37, but can change 37 to any prime number. 
 //37 is what i started off with, as given by example in the slides
void hashTab::getPwrs37() {
	int primeNum = 7919;

	for (int i = 0; i < 22; i++){
		threeSeven[i] = pow(primeNum,i);
	}
}

//retrieve pre-calculated powers of prime from array
int hashTab::retrieve37Pwrs(int index) {
	return threeSeven[index];
}


int hashTab::hashFunction(string word) {
	int sum = 0;
    for (int k = 0; k < word.length(); k++) {
    	sum = sum + int(word[k]) * retrieve37Pwrs(k);
    }
    return  sum % hashtable.size(); 
}



void hashTab::insert(string word) {
	if (word.size() >= 3) {
		int hf = hashFunction(word);
		(hashtable[hf]).push_back(word);
	}
}

bool hashTab::find(string word) {
	int hf = hashFunction(word);
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





		






