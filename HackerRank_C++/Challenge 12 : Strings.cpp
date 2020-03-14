#include <iostream>
#include <string>
using namespace std;

int main() {
	// Complete the program
    string a,b;
    cin >> a >> b; //input from user
    cout << a.length() << ' ' << b.length() << endl << a+b <<endl; //printing as asked
    string c,d;
    c = a[0] ; //string c that contains a's first character and rest of b string
    for (int i=1;i<b.length();i++){
        c += b[i];
    }
    d = b[0] ; //string d that contains b's first character and rest of a string
    for (int i=1;i<a.length();i++){
        d += a[i];
    }
    cout << d << ' ' << c; //printing strings c and d
    return 0;
}
