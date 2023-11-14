#include <iostream>
#include <algorithm>
using namespace std;
bool minghoul(long long max, long long a[], long long n, long long m){
    long long kaneki =0, current = 0;
    for(long long i=0; i<n; i++){
        current += a[i];
        if(current > max) {
            kaneki += 1;
            current = a[i];
        }
    }
    return kaneki +1 <= m;
}
int main() {
    long long n, m;
    cin>>n>>m;
    long long a[n], r=0;
    for(long long i =0; i<n; i++){
        cin>>a[i];
        r+=a[i];

    }
    long long l = *max_element(a, a+n);
    long long res = r, lowmax;
    while(l<=r){
        lowmax = l + ((r-l)/2);
        if(minghoul(lowmax, a, n, m)){
            res = lowmax;
            r = lowmax -1;
        }
        else{
            l = lowmax +1;
        }

    }
    cout<<res;
}
