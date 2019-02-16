#include <iostream>

long long lcm_naive(long long a, long long b) {
 long long result = a * b;
 int current_gcd = 1;
  if (a == 0 || b == 0)
	  current_gcd = 1;
  else {	  
	  current_gcd = ( a % b);
	  while (current_gcd < 0 || current_gcd > 0) {
		  a = b;
		  b = current_gcd;
		  current_gcd = (a % b) ;		  
	  }
	  current_gcd = b;	  	  
  }
  result = result / current_gcd;
 // result = result / current_gcd;
  return result ;
}

int main() {
  long long a, b;
  std::cin >> a >> b;
  std::cout << lcm_naive(a, b) << std::endl;
  return 0;
}
