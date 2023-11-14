#include <iostream>
#include <algorithm>
using namespace std;
bool robindobry(int a[], int n, int h, int k){
    int hours = 0;
    for(int i=0;i<n;i++){
        hours += (a[i] + k - 1)/k;

    }
    if(hours <= h){
        return true;
    }
    else {
        return false;
    }
}
int main() {
    int n, h;
    cin>>n>>h;
    int a[n];
    for(int i=0; i<n; i++){
    cin>>a[i];
    }
    int l = 1, r = *max_element(a, a+n);
    int k, res;
    while(l<=r){
        k = l + (r-l)/2;
        if (robindobry(a, n, h, k)){
            res = k;
            r = k - 1;
        }
        else{
            l = k + 1;
        }
    }
    cout<<res;
}