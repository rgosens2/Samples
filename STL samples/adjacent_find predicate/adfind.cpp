//////////////////////////////////////////////////////////////////////
//
// Compile options needed: /GX
//
// adfind.cpp : Illustrates how to use the predicate version of
//              adjacent_find function.
//
// Functions:
//
//   adjacent_find  - Locate a consecutive sequence in a range.
//////////////////////////////////////////////////////////////////////

// disable warning C4786: symbol greater than 255 character,
// okay to ignore
#pragma warning(disable: 4786)

#include <iostream>
#include <algorithm>
#include <functional>
#include <string>
#include <vector>

using namespace std;


void main()
{
    const int VECTOR_SIZE = 5 ;

    // Define a template class vector of strings
    typedef vector<string > StringVector ;

    //Define an iterator for template class vector of strings
    typedef StringVector::iterator StringVectorIt ;

    StringVector NamesVect(VECTOR_SIZE) ;   //vector containing names

    StringVectorIt location ;   // stores the position for the
                                 // first pair of matching
                                 // consecutive elements.

    StringVectorIt start, end, it ;

    // Initialize vector NamesVect
    NamesVect[0] = "Aladdin" ;
    NamesVect[1] = "Jasmine" ;
    NamesVect[2] = "Mickey" ;
    NamesVect[3] = "Minnie" ;
    NamesVect[4] = "Goofy" ;

    start = NamesVect.begin() ;   // location of first
                                  // element of NamesVect

    end = NamesVect.end() ;       // one past the location
                                  // last element of NamesVect

    // print content of NamesVect
    cout << "NamesVect { " ;
    for(it = start; it != end; it++)
        cout << *it << ", " ;
    cout << " }\n" << endl ;

    // Find the first name that is lexicographically greater
    // than the following name in the range [first, last + 1).
    // This version performs matching using binary predicate
    // function greater<string>
    location = adjacent_find(start, end, greater<string>()) ;

    // print the first pair of strings such that the first name is
    // lexicographically greater than the second.
    if (location != end)
        cout << "(" << *location << ", " << *(location + 1) << ")"
        << " the first pair of strings in NamesVect such that\n"
        << "the first name is lexicographically greater than "
        << "the second\n" << endl ;
    else
        cout << "No consecutive pair of strings found such that\n"
        << "the first name is lexicographically greater than "
        << "the second\n" << endl ;

	// Keep displaying console
	//cin.get();
	system("pause");
}

