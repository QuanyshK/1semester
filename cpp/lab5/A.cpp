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
        int p = parent(i);
        if(a[i]<a[p]){
            swap(a[i], a[p]);
            up(p);
        }
    }
    void down(long long i){
        long long  l = left(i);
        long long  r = right(i);
        long long  min = i;
        if(l<this-> s && a[min] > a[l]){
            min =l;
        }
        if(r< this->s && a[min] >a[r]){
            min = r;
        }
        if(min != i){
            swap(a[i], a[min]);
            down(min);
        }
    }
    void add(long long x){
        a[s] = x;
        s++;
        up(s-1);
    }
    void getmin(){
        a[0] = a[s-1];
        s = max((long long)0, s-1);
        down(0);
    }
    void output(){
        for(long long i =0; i<s; i++){
            cout<<a[i]<<" ";
        }
        cout<<endl;
    }
    heap(long long x){
        this->a = new long long[x];
        this->cap = x;
        this->s = 0;
    }

};
int main(){
    long long n;
    cin>>n;
    heap h(n);
    for(int i =0; i<n; i++){
        long long x; cin>>x;
        h.add(x);

    }
    long long sum = 0;
    while(h.s!=1){
        long long local = 0;
        local+=h.a[0];
        h.getmin();
        local += h.a[0];
        h.getmin();
        h.add(local);
        sum+=local;
    }
    cout<<sum;
}
