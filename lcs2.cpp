#include <iostream>
#include <vector>

using std::vector;

int maxValue(int a, int b);

int lcs2(vector<int> &a, vector<int> &b, int m, int n) {
	int LCS[1][1];
	int i, j;
	for (i = 0; i <= m; i++)
	{
		for (j = 0; j <= n; j++)
		{
			if (i == 0 || j == 0)
				LCS[i][j] = 0;

			else if (a[i - 1] == b[j - 1])
				LCS[i][j] = LCS[i - 1][j - 1] + 1;

			else
				LCS[i][j] = maxValue(LCS[i - 1][j], LCS[i][j - 1]);
		}
	}
	return LCS[m][n];
}
	 
	
 


int maxValue(int a, int b) 
{ 
	return (a > b)? a : b; 
} 

int main() {
  size_t n;
  std::cin >> n;
  vector<int> a(n);
  for (size_t i = 0; i < n; i++) {
    std::cin >> a[i];
  }

  size_t m;
  std::cin >> m;
  vector<int> b(m);
  for (size_t i = 0; i < m; i++) {
    std::cin >> b[i];
  }
  int arraySizeA = a.size();
  int arraySizeB = b.size();

  std::cout << lcs2(a, b,arraySizeA,arraySizeB) << std::endl;
}
