//////////////////////////////////////////////////////////////////////
//
// Compile options needed: /GX
//
// adfind.cpp : Illustrates how to use the  non-predicate version of
//              adjacent_find function.
//
// Functions:
//
//   adjacent_find - Locate a matching consecutive sequence in a range.
//////////////////////////////////////////////////////////////////////

#include <algorithm>
#include <iostream>

using namespace std;


void main()
{
    const int ARRAY_SIZE = 8 ;
    int IntArray[ARRAY_SIZE] = { 1, 2, 3, 4, 4, 5, 6, 7 } ;

    int *location ;   // stores the position for the first pair
                      // of matching consecutive elements.

    int i ;

    // print content of IntArray
    cout << "IntArray { " ;
    for(i = 0; i < ARRAY_SIZE; i++)
        cout << IntArray[i] << ", " ;
    cout << " }" << endl ;

    // Find the first pair of matching consecutive elements
    // in the range [first, last + 1)
    // This version performs matching using operator==
    location = adjacent_find(IntArray, IntArray + ARRAY_SIZE) ;

    //print the matching consecutive elements if any were found
    if (location != IntArray + ARRAY_SIZE)  // matching consecutive
                                            // elements found
        cout << "Found adjacent pair of matching elements: ("
        << *location << ", " << *(location + 1) << "), " <<
        "at location " << location - IntArray << endl;
    else         // no matching consecutive elements were found
        cout << "No adjacent pair of matching elements were found"
        << endl ;

	// Keep displaying console
	//cin.get();
	system("pause");
}
