#include <bits/stdc++.h>
using namespace std;
vector<int> v;
bool isPrime(int n)
{
      if(n == 1 || n == 0) {
        return false;
      }
      for(int i = 2; i * i <= n; i++)
      {
        if(n % i == 0) {
            return false;
        }
      }
      return true;
}
void calculate() {
    for(int i = 1; i<100000; i++) {
        if(isPrime(i)){
            v.push_back(i);
        }
    }
}
int main() {
    calculate();
    int n; 
    cin>>n;
    cout<<v[n-1];
    
}