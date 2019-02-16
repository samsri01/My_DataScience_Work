#include <iostream>

int gcd_naive(long long  a, long long b) {
  int current_gcd = 1;
  if (a == 0 || b == 0)
	  return current_gcd;
  else {
	  
	  current_gcd = ( a % b);
	  while (current_gcd < 0 || current_gcd > 0) {
		  a = b;
		  b = current_gcd;
		  current_gcd = (a % b) ;		  
	  }
	  current_gcd = b;
	  return current_gcd;	  
  }
	  
  for (int d = 2; d <= a && d <= b; d++) {
    if (a % d == 0 && b % d == 0) {
      if (d > current_gcd) {
        current_gcd = d;
      }
    }
  }
  return current_gcd;
}

int main() {
  long long a, b;
  std::cin >> a >> b;
  std::cout << gcd_naive(a, b) << std::endl;
  return 0;
}
