#include <iostream>
using namespace std;
int jojomistake(int a[], int n, int m){
    int l =0, r = n-1, k;
    while(l<=r){
        k = l + (r-l)/2;
        if(a[k]==m)
            return k;
        if(a[k]>m){
            r = k-1;
        }
        else{
            l = k +1;
        }
    }
    return l;
}
int main(){
    int n, m; cin>>n>>m;
    int a[n], sum =0;
    
    for(int i = 0; i<n;i++){
        int c; cin>>c;
        sum += c;
        a[i]= sum;
    }
    while(m--){
        int h; cin>>h;
        cout<<jojomistake(a, n, h) + 1<<"\n";
    }
}