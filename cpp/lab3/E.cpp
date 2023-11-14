#include <iostream>
#include <algorithm>
#include <utility>
using namespace std;
int main(){
    int n, m; cin>>n>>m;
    int a[n][4];
    int mx = 0;
    for(int i=0;i<n;i++){
        cin>>a[i][0]>>a[i][1]>>a[i][2]>>a[i][3];
        int localmx = *max_element(a[i], a[i]+4);
        if(localmx > mx)
            mx = localmx;
    }
    int l = 1, r = mx, k, res;
    while(l<=r){
        k = l + (r-l)/2;
        int cnt =0;
        for(int i=0; i<n;i++){
            if(k >= a[i][0] && k >= a[i][1] && k >= a[i][2] && k >= a[i][3] )
                cnt++;
        }
        if(cnt>=m){
            res = k;
            r = k -1;
        } else{
            l = k + 1;

        }
    }
    cout<<res;
}