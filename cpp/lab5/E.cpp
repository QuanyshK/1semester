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
            if(a[i]>a[p]){
                swap(a[i],a[p]);
                Up(p);
            }
        }

    }
    void down(long long i){
        long long  l = left(i);
        long long  r = right(i);
        long long  max = i;
        if(l<this->s && a[max] < a[l]){
            max =l;
        }
        if(r< this->s && a[max] < a[r]){
            max = r;
        }
        if(max != i){
            swap(a[i], a[max]);
            down(max);
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
    int findmin(){
        int min = a[s/2];
        int res = s/2;
        for(int i = 1 + s/2; i < s; i++){
            if(a[i]<a[res]){
                res = i;
            }
        }
        return res;
    }
};
int main(){
    int q, k; cin>>q>>k;
    heap H(k);
    while(q--){
        string s; cin>>s;
        if(s=="insert"){

        long long x; cin>>x;
        if(H.s < k){
            H.add(x);
        }
        else {
            int min = H.findmin();
            if(H.a[min] <x){
                H.a[min]=x;
                H.Up(min);
            }
            }
        }
        if(s=="print"){
            long long sum = 0;
            for(int i =0; i<H.s; i++){
                sum +=H.a[i];
            }
            cout<<sum<<"\n";
        }
    }

}