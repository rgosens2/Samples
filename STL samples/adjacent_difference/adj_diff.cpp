///////////////////////////////////////////////////////////////////////
//
// Compile options needed: /GX
//
// adj_diff.cpp : Demonstrates the use of adjacent_difference()
//
// Description of adjacent_difference(first,last,result)
//                adjacent_difference(first,last,result,binary_op):
//
//    Assigns to every element referred to by iterator i in the range
//    [result + 1, result + (last - first))
//    a value correspondingly equal to
//    *(first + (i - result)) - *(first + (i - result) - 1)
//    or
//    binary_op(*(first + (i - result)), *(first + (i - result) - 1)).
//    Result gets the value of *first.
///////////////////////////////////////////////////////////////////////

#include <iostream>
#include <numeric>
#include <functional>
#include <vector>
#include <iterator>

using namespace std;


typedef vector < int > IntegerArray;
typedef ostream_iterator < int, char, char_traits<char> > IntOstreamIt;

void main ()
{
    // an ostream iterator that outputs an int to cout terminated
    // by a space
    IntOstreamIt itOstream(cout," ");

    // Initialize the array
    // Suppose that you are taking a trip and can measure
    // the miles traveled from your city of origin
    // to the city you are traveling through
    IntegerArray rgIA;
    rgIA.push_back(5661); // San Francisco to Berlin
    rgIA.push_back(7456); // to Cairo
    rgIA.push_back(10995); // to Calcutta
    rgIA.push_back(17019); // to Cape Town
    rgIA.push_back(24394); // to Hong Kong
    rgIA.push_back(30376); // to London
    rgIA.push_back(35758); // to Los Angeles

    // Print the array
    copy(rgIA.begin(),rgIA.end(),itOstream);
    cout << endl;

    // Suppose that you now want the distance between each
    // of the cities that you traveled to. You can easily
    // find it with adjacent_difference()
    IntegerArray rgDifferences(7);
    IntegerArray::iterator itDifferences = rgDifferences.begin();
    adjacent_difference(rgIA.begin(),rgIA.end(),itDifferences);

    // Print the differences
    // Remember that the first item in the differences array is
    // not a difference, but is unused space
    cout << "The adjacent differences are: ";
    copy(rgDifferences.begin()+1,rgDifferences.end(),itOstream);
    cout << endl;

    // Suppose that you now want to know which adjacent differences
    // are greater. If you have [a,b,c], you would like [1,0] if a>b
    // and b<=c.
    // You are using less() rather than greater() because
    // adjacent_difference() reverses the parameters. For example,
    // if a and b are adjacent, adjacent_difference() calls
    // less(b,a). See the explanation at the top of this file
    // for a more exact description.
    IntegerArray rgGT(6);
    IntegerArray::iterator itGT = rgGT.begin();
    adjacent_difference(rgDifferences.begin()+1,
                        rgDifferences.end(),
                        itGT,
                        less<int>());

    // Print the greater thans
    // Remember that the first item in the differences array is
    // not a difference, but is unused space
    cout << "Which adjacent distances are greater:" << endl
         << "(If you have [a,b,c], then you have [1,0] if a>b and b<=c)"
         << endl;
    copy(rgGT.begin()+1,rgGT.end(),itOstream);
    cout << endl;

	// Keep displaying console
	//cin.get();
	system("pause");
}
