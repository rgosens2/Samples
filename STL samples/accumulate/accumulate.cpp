///////////////////////////////////////////////////////////////////////
//
// Compile options needed: /GX
//
// accumulate.cpp : Demonstrates the use of accumulate()
//
// Description of accumulate(first,last,init)
//                accumulate(first,last,init,binary_op):
//
//    Initializes the accumulator acc with the initial value init
//        acc = init
//    and then modifies it with
//        acc  =  acc + *i
//    or
//        acc = binary_op(acc, *i)
//    for every iterator i in the range [first, last) in order.
///////////////////////////////////////////////////////////////////////

// turn off warning about symbols too long for debugger
#pragma warning (disable : 4786)

#include <iostream>
#include <numeric>
#include <functional>
#include <vector>
#include <iterator>
#include <string>

using namespace std;


typedef vector < float > FloatArray;
typedef vector < string > StringArray;
typedef ostream_iterator <float, char, char_traits <char> > FloatOstreamIt;

void main ()
{
    // a vector of floats
    FloatArray rgFA;

    // an ostream iterator that outputs a float to cout terminated
    // by a space
    FloatOstreamIt OstreamIt(cout," ");

    // Initialize the array to 1,1/2,1/3,...
    for (int i=0; i<10; i++) rgFA.push_back(1.0f/(i+1));

    // Print the array
    copy(rgFA.begin(),rgFA.end(),OstreamIt);
    cout << endl;

    // Sum the array
    cout << "The sum of 1 + 1/2 + 1/3 + ... + 1/10 is "
         << accumulate(rgFA.begin(),rgFA.end(),0.0f)
         << endl;

    // Compute the product of the array
    cout << "The product of 1 * 1/2 * 1/3 * ... * 1/10 is "
         << accumulate(rgFA.begin(),rgFA.end(),1.0f,multiplies<float>())
         << endl;

    // Initialize array of strings
    StringArray rgs;
    rgs.push_back("This ");
    rgs.push_back("is ");
    rgs.push_back("one ");
    rgs.push_back("sentence. ");

    // Concatenate the strings in the array and print the sentence
    cout << "The concatenated vector of strings: "
         << accumulate(rgs.begin(),rgs.end(),string(""))
         << endl;

	// Keep displaying console
	//cin.get();
	system("pause");
}
