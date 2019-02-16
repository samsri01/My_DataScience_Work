#include<bits/stdc++.h>
using namespace std;

int max(int a, int b)
{
   if(a>=b)
   return a;
   else
   return b;
 }

int knapSack(int W, int wt[], int n)
{
    int result;
int** KS = new int*[n+1];
  for(int i = 0; i < n+1; ++i)
      KS[i] = new int[W+1];

for (int i = 0; i <= n; i++)
{
	for (int k = 0; k <= W; k++)
	{
		if (i==0 || k==0)
			KS[i][k] = 0;
		else if (wt[i-1] <= k)
				KS[i][k] = max(wt[i-1] + KS[i-1][k-wt[i-1]], KS[i-1][k]);
		else
				KS[i][k] = KS[i-1][k];
	}
}

result = KS[n][W];
return result;
}

int main()
{
    int w,n;
    cin>>w>>n; int wt[n];
    for(int i=0;i<n;i++)
    cin>>wt[i];

    sort(wt,wt+n);

cout<<knapSack(w, wt, n)<<endl;
	return 0;
}