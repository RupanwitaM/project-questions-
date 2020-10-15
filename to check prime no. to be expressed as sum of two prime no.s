#include <iostream>
using namespace std;

bool Primecheck(int num);

int main() {
	// check if a number can be expressed as sum of 2 prime numbers
	// take input from user
	int num,i;
	bool flagnum = false;

	cout << "Enter a positive  integer: ";
	cin >> num;
	
	for(i = 2; i <= num/2; ++i) {
        if (Primecheck(i)) {
            if (Primecheck(num - i)) {
                cout << num << " = " << i << " + " << num-i << endl;
                flagnum = true;
            }
        }
    }
	
	if (!flagnum)
      cout << num << " can't be expressed as sum of two prime numbers.";

    return 0;
}
	
	// to check prime number
bool Primecheck(int num)
{
    int i;
    bool Prime = true;

    // 0 and 1 are not prime numbers
    if (num == 0 || num == 1) {
        Prime = false;
    }
    else {
        for(i = 2; i <= num/2; ++i) {
            if(num % i == 0) {
                Prime = false;
                break;
            }
        }
    }

    return Prime;
}
