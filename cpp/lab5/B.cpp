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
    void print(){
        for(long long i = 0; i < s; i++){
            cout << a[i] << " ";
        }
        cout << endl;
    }
};
int main(){
    int n; cin>>n;
    heap H(n);
    for(int i=0; i<n; i++){
        int x; cin>>x;
        H.add(x);
    }
    while (H.s > 1){
        int y = H.a[0];
        H.getmax();
        int x = H.a[0];
        H.getmax();
        if(x<y){
            y-=x;
            H.add(y);
    }
    else if(x==y){
        continue;
    }
    }
    if(H.s>0){
        cout<<H.a[0];
    }
    else
        cout<<0;
}