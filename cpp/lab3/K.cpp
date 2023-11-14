#include <iostream>
#include <algorithm>

using namespace std;
int main() {
    int n, h;
    cin>>n>>h;
    int a[n];
    for(int i=0; i<n; i++){
    cin>>a[i];
    }
    int l = 0, r = 0;
    int cur = 0;
    int result = n+1;
    while(r<n){
        cur += a[r];
        r++;
        while(cur>=h){
            result = min(result, r - l);
            cur -= a[l];
            l++;
        } 
    }
        cout<<result;
    }