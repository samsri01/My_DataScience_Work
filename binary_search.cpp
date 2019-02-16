#include <iostream>
#include <cassert>
#include <vector>

using std::vector;

int binary_search(vector<int> a, int x, int startIndex, int endIndex) {

	  
  while(startIndex <= endIndex) {
	  int middleIndex = startIndex + (endIndex - startIndex)/2;
	  if (x == a[middleIndex])
		  return middleIndex;
	  else if (x < a[middleIndex])
		  endIndex = middleIndex - 1;
	  else
		  startIndex = middleIndex + 1;
  }
  return -1;

}

int linear_search(const vector<int> &a, int x) {
	for (size_t i = 0; i < a.size(); ++i) {
		if (a[i] == x) return i;
	}
	return -1;
}

int main() {
	int n;
	std::cin >> n;
	vector<int> a(n);
	for (size_t i = 0; i < a.size(); i++) {
		std::cin >> a[i];
	}
	int m;
	std::cin >> m;
	vector<int> b(m);
	for (int i = 0; i < m; ++i) {
		std::cin >> b[i];
	}

	for (int i = 0; i < m; ++i) {

		std::cout << binary_search(a, b[i], 0, m - 1) << ' ';
	}
}
