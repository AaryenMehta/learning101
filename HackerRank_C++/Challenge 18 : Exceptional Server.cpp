#include <iostream>
#include <exception>
#include <string>
#include <stdexcept>
#include <vector>
#include <cmath>
using namespace std;

class Server {
private:
	static int load;
public:
	static int compute(long long A, long long B) {
		load += 1;
		if(A < 0) {
			throw std::invalid_argument("A is negative");
		}
		vector<int> v(A, 0);
		int real = -1, cmplx = sqrt(-1);
		if(B == 0) throw 0;
		real = (A/B)*real;
		int ans = v.at(B);
		return real + A - B*ans;
	}
	static int getLoad() {
		return load;
	}
};
int Server::load = 0;

int main() {
	int T; cin >> T;
	while(T--) {
		long long A, B;
		cin >> A >> B;

		/* Enter your code here. */
        try {
            cout << Server::compute(A,B) << endl; //Server.compute(A,B) may generate error
        } 
        catch (bad_alloc& error) {
            cout << "Not enough memory" << endl; //catches this when enough memory is not available
        }
        catch (exception& error) {
            cout << "Exception: " << error.what() << endl; //catches this when any other standard exception is thrown
        }
        catch (...) {
            cout << "Other Exception" << endl; //default catch block
        }

	}
	cout << Server::getLoad() << endl;
	return 0;
}
