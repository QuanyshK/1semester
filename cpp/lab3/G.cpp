#include <iostream>
#include <algorithm>
using namespace std;
bool jojosanta(int a[], int n, int flight, int lowmax){
    int totalflight = 0;
    for(int i =0; i<n; i++){
        totalflight += (a[i] + lowmax -1)/lowmax;
    }
        if(totalflight <= flight){
            return true;
        }
        else{
            return false;
        }
    
    }
int  main(){
    int n,flight;
    cin>>n>>flight;
    int a[n];
    for(int i=0; i<n; i++){
        cin>>a[i];

    }
    int l =1, r = *max_element(a, a+n);
    int lowmax, result;
    while(l<=r){
        lowmax = l+(r-l)/2;
        if(jojosanta(a, n, flight, lowmax)){
            result = lowmax;
            r= lowmax - 1;
        }
        else {
            l = lowmax +1;
        }
    }
    cout<<result;
}