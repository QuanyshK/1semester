#include <iostream>
#include <algorithm>
#include <map>
#include <bits/stdc++.h>
using namespace std;
int partition(int  a[], int left, int right){
    int pivot = a[right];
    int i = (left - 1);
    for(int j = left; j<=right - 1; j++){
        if(a[j]< pivot){
            i++;
            swap(&a[i], &a[j]);
        }
    }
    swap(&a[i+1], &a[right]);
    return(i+1);

}
void QuickSort(int a[], int left, int right){
    if(left < right){

    int pivot = partition(a, left, right);
    QuickSort(a, left, pivot -1);
    QuickSort(a, pivot+1, right);
    }
}
int main(){
    int n; cin>>n;
    int a[n];
    for(int i=0; i<n; i++){
        cin>>a[i];
    }
    QuickSort(a, 0 , n-1);
    int difference = INT_MAX;
    map<pair<int, int>, int> m;
    for(int i =1; i<n; i++){
        difference = min(difference,a[i]-a[i-1]);
        m[{a[i], a[i-1]}] = a[i] -a[i-1];
    }
    map<pair<int, int> , int> :: iterator it;
    for(it = m.begin(); it != m.end(); it++){
        if((*it).second== difference){
            cout<<(*it).first.second <<" "<<(*it).first.first<<" ";
        }
    }
}