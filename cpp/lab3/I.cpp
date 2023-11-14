#include <iostream>
#include <algorithm>
using namespace std;

int  main(){
int n;
cin>>n;
int a[n];
for(int i=0; i<n; i++){
    cin>>a[i];

}
int t;
cin>>t;

int l =0, r = n-1;
int lowmax;
while(l<=r){
    lowmax = l+(r-l)/2;
    if( a[lowmax]== t){
        cout<<"Yes";
        return 0;
    }
    else if(a[lowmax] > t)
        r = lowmax -1;
    
    
    else
        l = lowmax +1;
    
    }
    cout<<"No";
}
