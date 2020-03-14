#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;


int main() {
    /* Enter your code here. Read input from STDIN. Print output to STDOUT */   
    int n,q; //number of rows and number of queries respectively
    cin >> n >> q ;
    int var_num1,var_num2; //two variable numbers
    vector<vector<int>> v; //dual vector. For variable sized array.
    cin >> var_num1;
    for(int j=0;j<n;j++){
        vector<int> var; //variable column vector
        for (int i=0;i<var_num1;i++){ //this loop makes a variable column vector from a given input row
            cin >> var_num2;
            var.push_back(var_num2);
        }
        if(j != n-1) cin >> var_num1;
        //cout << var_num1 <<endl;
        v.push_back(var); //variable column vector is pushed in 2D vector
    }
    int i,j;
    for (int x=0;x<q;x++){
        cin >> i >> j ; //scanning desired positioned numbers to print
        //cout << i << ' ' << j << endl;
        printf("%d\n",v[i][j]); //printing desired numbers
    }
    return 0;
}
