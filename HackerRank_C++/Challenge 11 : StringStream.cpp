#include <sstream>
#include <vector>
#include <iostream>
using namespace std;

vector<int> parseInts(string str) {
	// Complete this function
    vector<int> v(0);
    int start=0,end,i;
    for (i=0;i<str.length();i++){
        if (str[i] == ','){ //this runs when encountered by ,(comma)
            end = i ;
            string sub=str.substr(start,end-start); //substring that contains numbers but not ,(comma)
            //cout << sub << endl;
            v.push_back(std::stoi(sub)); //stoi convert string to integer and then push_back pushes it in the vector v
            start = end + 1 ; //update
        }
    }
    end = i;
    string sub = str.substr(start,end-start); //after the above loop runs, one final integer is left to push_back
    v.push_back(std::stoi(sub)); //final integer pushed
    return v;
}

int main() {
    string str;
    cin >> str;
    vector<int> integers = parseInts(str);
    for(int i = 0; i < integers.size(); i++) {
        cout << integers[i] << "\n"; //prints integers on seperate lines
    }
    
    return 0;
}
