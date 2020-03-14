#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
#include <cassert>
using namespace std;

// Write your Student class here
class Student {
    private :

    vector<int> scores; //vector to store 5 scores

    public :

    void input(){ //inputs 5 scores and stores them in the vector 'scores'
        int var,i;
        for (i=0;i<5;i++){
            cin >> var ;
            scores.push_back(var);
        }
    }

    int calculateTotalScore(){ //calculates total score of 5 exams
        return scores[0]+scores[1]+scores[2]+scores[3]+scores[4];
    }
};

int main() {
    int n; // number of students
    cin >> n;
    Student *s = new Student[n]; // an array of n students
    
    for(int i = 0; i < n; i++){
        s[i].input();
    }

    // calculate kristen's score
    int kristen_score = s[0].calculateTotalScore();

    // determine how many students scored higher than kristen
    int count = 0; 
    for(int i = 1; i < n; i++){
        int total = s[i].calculateTotalScore();
        if(total > kristen_score){
            count++;
        }
    }

    // print result
    cout << count;
    
    return 0;
}

