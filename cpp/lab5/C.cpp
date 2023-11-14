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
    long long right(long long i){
        return i*2+2;
    }
    void up(long long i){
        if(i>0){

        
        long long p = parent(i);
        if(a[i]>a[p]){
            swap(a[i], a[p]);
            up(p);
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
    void add(long long x){
        a[s] = x;
        s++;
        up(s-1);
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
    long long n ,x;
    cin>>n>>x;
    heap h(n);
    for(int i =0; i<n; i++){
        long long a; cin>>a;
        h.add(a);

    }
    long long sum = 0;
    while(x--){
        sum+=h.a[0];
        long long newmax = max((long long)0, h.a[0] - 1);
        h.getmax();
        h.add(newmax);
    }
    cout<<sum;
}
