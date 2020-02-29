#include <iostream>
#include <string>

using namespace std;

int main()
{

    char c;

    // while it is possible to read a character
    while (cin.get(c)) {
        // print it
        cout.put(c);
    }

/*
	// copy all standard input to standard output
    //cin >> noskipws >> cout.rdbuf();
*/
/*	
	const string delims(" \t,.;");
	string line;
	
	// for every line read successfully
	while (getline(cin,line)) {
		string::size_type begIdx, endIdx;
		
		// search beginning of the first word
		begIdx = line.find_first_not_of(delims);
		
		// while beginning of a word found
		while (begIdx != string::npos) {
			// search end of the actual word
			endIdx = line.find_first_of(delims, begIdx);
			if (endIdx == string::npos) {
				// end of word is end of line
				endIdx = line.length();
			}
			
			// print characters in reverse order
			for (int i=endIdx-1; i>=static_cast<int>(begIdx); --i) {
				cout << line[i];
			}
			cout << ' ';
			
			// search beginning of the next word
			begIdx = line.find_first_not_of(delims, endIdx);
		}
		cout << endl;
	}
*/


	return 0;
}