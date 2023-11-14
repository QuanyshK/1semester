#include <iostream>
#include <algorithm>
using namespace std;
struct heap {
    long long *a;
    long long cap;
    long long s;
    long long parent(long long i){
        return (i-1)/2;
    }
    long long left(long long i){
        return i*2+1;
    }
    long long right(long long i ){
        return i*2+2;
    }
    void add(long long x) {
        a[s] = x;
        s++;
        Up(s-1);
    }
    void Up(long long i){
        if(i>0){
            long long p = parent(i);
            if(a[i]<a[p]){
                swap(a[i],a[p]);
                Up(p);
            }
        }

    }
    void down(long long i){
        long long  l = left(i);
        long long  r = right(i);
        long long  min = i;
        if(l<this->s && a[min] > a[l]){
            min =l;
        }
        if(r< this->s && a[min] > a[r]){
            min = r;
        }
        if(min != i){
            swap(a[i], a[min]);
            down(min);
        }
    }
    void getmax(){
        a[0] = a[s-1];
        s = max((long long)0, s-1);
        down(0);
    }
    heap(long long x){
        a = new long long[x];
        this->cap = x;
        this->s = 0;
    }
};
int main(){
    long long n, m;
     cin>>n>>m;
     heap H(n);
     for(long long i =0; i<n; i++){
        long long a; cin>>a;
        H.add(a);
     }
     long long cnt=0;
    while(H.a[0] <= m){
        if(H.s<2){
            cout<<-1;
            return 0;
        }
        
        long long minfirst = H.a[0];
        H.getmax();
        long long minsecond = H.a[0];
        H.getmax();
        H.add(minfirst + 2*minsecond);
        cnt++;
    } 
    cout<<cnt;
}