#include <iostream>
#include <fstream>
#include <sstream>
//#include <istream>
//#include <fcntl.h>
//#include <ios>
#include <string>

//#include <process.h>

using namespace std;

void main()
{
/*	
	struct
	{
		double salary;
		char name[23];
	} employee;
	
	ifstream is;
	is.open( "..\\payroll.txt", ios::binary | ios::nocreate );
	if( is ) {  // ios::operator void*()
		is.read( (char *) &employee, sizeof( employee ) );
		cout << employee.name << ' ' << employee.salary << endl;
	}
	else {
		cout << "ERROR: Cannot open file 'payroll.txt'." << endl;
	}
*/



/*
	ifstream myfile;
	//myfile.open( "..\\payroll.txt", ios::binary | ios::nocreate );
	myfile.open( "..\\payroll.txt" );

	//char a[80];
	string data;

	if (myfile.is_open()) {
		while(!myfile.eof())		
		{		
			//myfile >> a;
			//cout << a << endl;
			getline(myfile, data, '\n');
			cout << data << endl;
		}
		myfile.close();
	} else {
		cout << "Unable to open file\n";
	}
*/

/*
	// Write flight data
	ofstream myfile;
	myfile.open("list.txt");

	if (myfile.is_open()) {
		myfile << "// R/C Sim Sikorsky Flight Data File" << endl;

		float f = 0.000001f;

		for(int i=0; i<=1000; i++)		
		{	
//			myfile.width(0);
//			myfile << "Number ";
//			myfile.width(4);
//			myfile << i << endl;

			myfile << "[Frame " << i << "]" << endl;
			//myfile.precision(6);
			//myfile.showpoint;
			//myfile.floatfield;
			//myfile.fixed;
			//myfile.setf(ios:fixed, ios::floatfield);
			//myfile.setprecision(6);
			myfile.setf(ios::fixed|ios::showpoint);
			//myfile.precision(9);
			myfile << i+0*f << " " << i+1*f << " " << i+2*f << " "<< i+3*f << endl;
			myfile << endl;
		}
		myfile.close();
	} else {
		cout << "Unable to open file\n";
	}
*/


	// Read flight data
	ifstream myfile2;
	myfile2.open("list.txt");

	string header, comment;
	string frame, number;
	string str0, str1, str2, str3;
	int i = 0;
	float f0, f1, f2, f3;

	if (myfile2.is_open()) {
		// get header
		getline(myfile2, header, '\n');
		cout << header << endl;
		
		cout << endl;
start:
		cout << "Type frame number: ";
		cin >> number;

		while(!myfile2.eof())
		{	
			getline(myfile2, frame, '\n');

			if ( frame.compare("[Frame " + number + "]") == 0 ) {
				//cout << "match" << endl;	

				//getline(myfile2, frame, '\n');

				getline(myfile2, str0, ' ');
				getline(myfile2, str1, ' ');
				getline(myfile2, str2, ' ');
				getline(myfile2, str3, '\n');

				// convert string to float
				istringstream iss0(str0);
				istringstream iss1(str1);
				istringstream iss2(str2);
				istringstream iss3(str3);
				
				iss0 >> f0;
				iss1 >> f1;
				iss2 >> f2;
				iss3 >> f3;


				// get one newline
				getline(myfile2, comment, '\n');

				//cout.setf(ios::fixed|ios::showpoint);
				//cout << "[Frame " << i << "]" << endl;
				//cout << "f0=" << f0<< " f1=" << f1 << " f2=" << f2 << " f3=" << f3 << endl;
				
				cout << frame << endl;
				//cout << str0 << " " << str1 << " " << str2 << " " << str3 << endl;
				//cout << endl;

				// test
				cout.setf(ios::fixed);
				cout << f0 << " " << f1 << " " << f2 << " " << f3 << endl;
				cout << endl;

				myfile2.seekg(0);
				goto start;
			}

//			//i++;
//			system("pause");
		}		
		myfile2.close();
	} else {
		cout << "Unable to open file\n";
	}
	
	
/*	
	char fileName[80];
	char buffer[255];    // for user input
	cout << "File name: ";
	cin >> fileName;
	
	ofstream fout(fileName);  // open for writing
	fout << "This line written directly to the file...\n";
	cout << "Enter text for the file: ";
	cin.ignore(1,'\n');  // eat the newline after the file name
	cin.getline(buffer,255);  // get the user's input
	fout << buffer << "\n";   // and write it to the file
	fout.close();             // close the file, ready for reopen
	
	ifstream fin(fileName);    // reopen for reading
	cout << "Here's the contents of the file:\n";
	char ch;
	while (fin.get(ch))
		   cout << ch;
	
	cout << "\n***End of file contents.***\n";
	
	fin.close();            // always pays to be tidy
*/	   
	   

	
	// Keep displaying console
	//cin.get();
	system("pause");
}
