#include <iostream>
#include <sstream>
using namespace std;

/*
Enter code for class Student here.
Read statement for specification.
*/
class Student { //class named Student
    
    private ://private variables

    int age, standard;
    string name,last_name;

    public ://public methods

    void set_age(int a){ //sets age to 'age'
        age = a;
    }

    void set_standard(int a){ //sets standard to 'standard'
        standard = a;
    }

    void set_first_name(string a){ //sets first name to 'name'
        name = a;
    }

    void set_last_name(string a){ //sets last name to 'last_name'
        last_name = a;
    }

    int get_age(void){ //returns age
        return age;
    }

    int get_standard(void){ //returns standard
        return standard; 
    }

    string get_first_name(void){ //returns first name
        return name;
    }

    string get_last_name(void){ //returns last name
        return last_name;
    }

    string to_string(void){ //converts all attributes to string with comma in between
        string str = std::to_string(age)+','+name+','+last_name+','+std::to_string(standard);
        return str;
    }
};

int main() {
    int age, standard;
    string first_name, last_name;
    
    cin >> age >> first_name >> last_name >> standard;
    
    Student st;
    st.set_age(age);
    st.set_standard(standard);
    st.set_first_name(first_name);
    st.set_last_name(last_name);
    
    cout << st.get_age() << "\n";
    cout << st.get_last_name() << ", " << st.get_first_name() << "\n";
    cout << st.get_standard() << "\n";
    cout << "\n";
    cout << st.to_string();
    
    return 0;
}
