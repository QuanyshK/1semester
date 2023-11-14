#include <bits/stdc++.h>
using namespace std;
int main() {
    queue<int> b, n;
    int cb = 0, cn = 0;
    int a;
    for(int i = 0; i < 5; i++) {
        cin>>a;
        b.push(a);
    }
    for(int i = 0; i < 5; i++) {
        cin>>a;
        n.push(a);
    }
    while(!b.empty() && !n.empty()) {
        int t = b.front(), c = n.front();
        b.pop(); n.pop();
        if(t==0 && c==9) {
            b.push(t);
            b.push(c);
            cb++;
        }
        else if(c==0 && t==9) {
            n.push(t);
            n.push(c);
            cn++;
        }
        else if(t > c){
            b.push(t);
            b.push(c);
            cb++;
        }
        else if(t < c){
            n.push(t);
            n.push(c);
            cn++;

        }
        if(cn + cb >= 100000) {
            cout<<"draw";
        }
    }
    if(b.empty()) {
        cout<<"Nursik"<<" "<<cn + cb;
    }
    else if(n.empty()){
        cout<<"Boris"<<" "<<cn+cb;
    }
}