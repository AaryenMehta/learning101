#include <cmath>
#include <cstdio>
#include <vector>
#include <iostream>
#include <algorithm>
using namespace std;

class Person{ //person class
    public:
    int age;
    string name;
    virtual void getdata(){ //virtual function that takes data from user
        cin >> name >> age;
    }
    virtual void putdata(){ //virtual function that prints data
        cout << name << ' ' << age << ' ' <<endl;
    }
};

class Professor : public Person { //Professor class inherited from Person class
    public:
    int publications,cur_id; //two new attributes
    Professor(){ //runs by default whenever Professor is called
        id++;
    }
    static int id; //holds the id of the current professor
    void getdata(){
        cin >> name >> age >> publications;
        cur_id = id;
    }
    void putdata(){
        cout << name << ' ' << age << ' ' << publications << ' ' << cur_id << endl;
    }
};
int Professor::id = 0; //initialised as 0

class Student : public Person{
    public:
    int marks[6], cur_id;
    static int id; //holds the id of current student
    Student(){
        id++;
    }
    void getdata(){
        cin >> name >> age >> marks[0] >> marks[1] >> marks[2] >> marks [3] >> marks[4] >> marks[5];
        cur_id = id;
    }
    void putdata(){
        cout << name << ' ' << age << ' ' << marks[0]+marks[1]+marks[2]+marks[3]+marks[4]+marks[5] << ' ' << cur_id << endl;
    }
};
int Student::id = 0; //initialised as 0
int main(){

    int n, val;
    cin>>n; //The number of objects that is going to be created.
    Person *per[n];

    for(int i = 0;i < n;i++){

        cin>>val;
        if(val == 1){
            // If val is 1 current object is of type Professor
            per[i] = new Professor;

        }
        else per[i] = new Student; // Else the current object is of type Student

        per[i]->getdata(); // Get the data from the user.

    }

    for(int i=0;i<n;i++)
        per[i]->putdata(); // Print the required output for each object.

    return 0;

}

