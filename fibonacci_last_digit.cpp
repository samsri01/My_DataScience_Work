#include <iostream>
#include <cmath>

int get_fibonacci_last_digit_naive(long long n) {
	
	int result;
    int firstNumber = 0;
	int secondNumber = 1;
	for (int loopFibNumber = 2; loopFibNumber <= n ; loopFibNumber ++) {
		{		
				
					result = (firstNumber + secondNumber) % 10 ;
					firstNumber = secondNumber;
					secondNumber = result;
					
				

			
		}
		
	}


	return result;
}

int main() {
    long long n;
    std::cin >> n;
	int c = (long long) get_fibonacci_last_digit_naive(n);
    std::cout << c << '\n';
	return 0;
    }


