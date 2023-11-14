#include <bits/stdc++.h>
using namespace std;
vector<int> v, v1;

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
    for(int i = 0; i < v.size(); i++) {
        if(isPrime(i)){
            v1.push_back(v[i]);
        }
    }
}
int main() {
    v.push_back(11);
    calculate();
    int n; 
    cin>>n;
    cout<<v1[n-1];
    
}