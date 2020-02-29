//////////////////////////////////////////////////////////////////////
//
// Compile options needed: /GX
//
// <filename> :  Advance.cpp
//
// Functions:
//
//    advance()
//////////////////////////////////////////////////////////////////////

/* Compile options needed: /GX
*/
#include <iostream>
#include <string>
#include <list>
#pragma warning (disable:4786)

using namespace std ;

typedef list<string> STRLIST;

void main() {
    STRLIST List;
    STRLIST::iterator iList;
    STRLIST::difference_type dTheDiff;

    List.push_back("A1");
    List.push_back("B2");
    List.push_back("C3");
    List.push_back("D4");
    List.push_back("E5");
    List.push_back("F6");
    List.push_back("G7");

    // Print out the list
    iList=List.begin();
    cout << "The list is: ";
    for (int i = 0; i < 7 ; i++, iList++)
        cout << *iList  << "  ";

    // Initialize to the first element"
    iList=List.begin();
    cout << "\n\nAdvance to the 3rd element." << endl;
    advance(iList,2);
    cout << "The element is " << *iList << endl;
    dTheDiff = distance( List.begin(), iList);

	// Keep displaying console
	//cin.get();
	system("pause");
}
