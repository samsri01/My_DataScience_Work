#include <algorithm>
#include <iostream>
#include <vector>

using std::vector;

int countElementOccurances(vector<int> &a, int left, int right, int element)
{
	int count = 0;
	for (int i = left; i <= right; i++)
	{
		if (a[i] == element)
		{
			count++;
		}
	}
	return count;
}

int get_majority_element(vector<int> &a, int left, int right) {
	using std::cout;
	using std::endl;
	// Divide and Conquer Algorithm, O(nlog(n))
	if (left > right) return -1;
	if (left == right) return a[left];
	int middle = left + (right - left) / 2;
	int leftCount = get_majority_element(a, left, middle);
	int rightCount = get_majority_element(a, middle + 1, right);
	if (leftCount == -1 && rightCount != -1)
	{
		unsigned int num = countElementOccurances(a, left, right, rightCount);
		if (num > (right - left + 1) / 2)
		{
			return rightCount;
		}
		else
		{
			return -1;
		}

	}
	else if (rightCount == -1 && leftCount != -1)
	{
		unsigned int num = countElementOccurances(a, left, right, leftCount);
		if (num > (right - left + 1) / 2)
		{
			return leftCount;
		}
		else
		{
			return -1;
		}
	}
	else if (leftCount != -1 && rightCount != -1)
	{
		unsigned int leftNum = countElementOccurances(a, left, right, leftCount);
		unsigned int rightNum = countElementOccurances(a, left, right, rightCount);
		if (leftNum > (right - left + 1) / 2)
		{
			return leftCount;
		}
		else if (rightNum > (right - left + 1) / 2)
		{
			return rightCount;
		}
		else
		{
			return -1;
		}
	}
	else
	{
		return -1;
	}

}


int main() {
	int n;
	std::cin >> n;
	vector<int> a(n);
	for (size_t i = 0; i < a.size(); ++i) {
		std::cin >> a[i];
	}
	std::cout << (get_majority_element(a, 0, a.size() - 1) != -1) << '\n';
}