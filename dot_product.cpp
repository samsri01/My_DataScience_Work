#include <algorithm>
#include <iostream>
#include <vector>

using std::vector;

long long max_dot_product(vector<int> a, vector<int> b) {
  int n = sizeof(a)/sizeof(a[0]);
  int temp;
 for(int i=0;i<=n;i++) 
	   {
			for(int j=0;j<=n-i;j++)  
				{
					if(a[j]>a[j+1])
						{
							temp=a[j];
							a[j]=a[j+1];
							a[j+1]=temp;
						}
				}
	   }
for(int i=0;i<=n;i++) 
	   {
			for(int j=0;j<=n-i;j++)  
				{
					if(b[j]>b[j+1])
						{
							temp=b[j];
							b[j]=b[j+1];
							b[j+1]=temp;
						}
				}
	   }
  long long result = 0;
  for (size_t i = 0; i < n; i++) {
    result += ((long long) a[i]) * b[i];
  }
  return result;
}

int main() {
  size_t n;
  std::cin >> n;
  vector<int> a(n), b(n);
  for (size_t i = 0; i < n; i++) {
    std::cin >> a[i];
  }
  for (size_t i = 0; i < n; i++) {
    std::cin >> b[i];
  }
  std::cout << max_dot_product(a, b) << std::endl;
}
