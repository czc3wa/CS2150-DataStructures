#include <iostream>
#include <cctype>  
using namespace std;

int main() {
	int sum = 0;
	string word = "Abc";
	for (int k = 0; k < word.length(); k++)  {
		cout << int(tolower(word[k])) - int('a') + 1 << endl;
		sum = sum + int(tolower(word[k])) - int('a') + 1;
	}
	cout << sum << endl;
	return 0;
}

./a.out words2.txt 300x300.grid.txt | sort > output.txt
sort 300x300.words2.out.txt > words2.sorted.out.txt
diff -w output.txt words2.sorted.out.txt