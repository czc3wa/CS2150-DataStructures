#include <iostream>
#include <fstream>
#include <iomanip>
#include <cctype> // std::isalpha(), std::toupper()

int main()
{
        const char alphabet[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ" ;
	int total[26] = { 0 };

	std::ifstream infile( "normal3.txt" );
	if (!infile) { /* ... */ }

	char c;
	while( infile.get(c) ) // read characters one at a time
	{
		if( std::isalpha(c) ) // check it is a-z or A-Z
		{
			c = std::toupper(c) ; // convert lower case to upper case

			// get the index of the upper case letter
			int index = 0 ;
			while( alphabet[index] != c ) ++index ;

			// index in range 0 to 25;
			++ total[index] ; // increment corresponding total
		}
	}

	for( int i = 0; i<26; ++i ) // Print the results
	{
		std::cout << "  " << alphabet[i] << " occurs "
			       << std::setw(5) << total[i] << " times\n" ;
	}
}