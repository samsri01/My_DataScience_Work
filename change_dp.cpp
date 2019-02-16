#include <iostream>

int get_change(int m) {
	int n;
	int input = m;
	n = (m / 4);
	m = m % 4;
	if ((input - (n*4) > 0) && (input - (n * 4)) < 3 && (input > 2))
	{
		n = n - 1;
	}
	n = n + (m / 3);
	m = m % 3;
	if (m != 0)
		n = n + m;
  return n;
}

int main() {
  int m;
  std::cin >> m;
  std::cout << get_change(m) << '\n';
}


