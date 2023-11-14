#include <iostream>
#include <algorithm>
using namespace std;
int jojoboxing(int a[], int n, int m){
    int l =0, r = n-1, k,res;
    while(l<=r){
        k = l + (r-l)/2;
        if(a[k]>m){
            r = k-1;
        }
        else{
            res = l;
            l = k +1;
        }
    }
    return l;
}
int sum(int a[], int l){
    int sum = 0;
    for(int i = 0; i<l; i++){
        sum += a[i];
    }
    return sum;
}
int main(){
    int n; cin>>n;
    int a[n], m;
    
    for(int i = 0; i<n;i++){
        cin>>a[i];
    }
    sort(a, a+n);
    cin>>m;
    while(m--){
        int h; cin>>h;
        int ind = jojoboxing(a, n, h);
        int s = sum(a, ind);
        cout<<ind<<" "<<s<<"\n";
    }
}