#include <algorithm>
#include <sstream>
#include <iostream>
#include <vector>
#include <string>


using std::vector;
using std::string;

int compareValues(string element1, string element2)
{
	string element12 = element1.append(element2);
	string element21 = element2.append(element1);
	return element12.compare(element21) > 0 ? 1 : 0;
}


string largest_number(vector<string> a) {
	sort(a.begin() , a.end(),compareValues);
	
	string result = "";
	for (int i = 0; i < a.size(); i++)
	{
		result = result + a[i];
	}
	return result;
}

int main() {
	int n;
	std::cin >> n;
	vector<string> a(n);
	for (size_t i = 0; i < a.size(); i++) {
		std::cin >> a[i];
	}
	std::cout << largest_number(a);
}
