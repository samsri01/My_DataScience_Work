#include <iostream>

long long get_fibonacci_huge_naive(long long n, long long m) {
    long long result;
    long long firstNumber = 0;
	long long secondNumber = 1;
	long long loopFibNumber = 0;
	for (loopFibNumber = 2 ; loopFibNumber < n ; loopFibNumber ++) {
		{
			if (loopFibNumber <= 1) 
				result = loopFibNumber;
			else
			{
				result = firstNumber + secondNumber ;
				firstNumber = secondNumber;
				secondNumber = result;
			}
		}
		
	}

    return result % m;
}

int main() {
    long long n, m;
    std::cin >> n >> m;
    std::cout << get_fibonacci_huge_naive(n, m) << '\n';
}
