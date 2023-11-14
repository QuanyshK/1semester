#include <bits/stdc++.h>
using namespace std;
int main() {
    string a, b;
    cin>>a>>b;
    stack<char> c, d;
    for(int i = 0; i < a.size(); i++) {
        if(a[i] != '#') {
            c.push(a[i]);
        }
        else if(!c.empty() && a[i] == '#') {
            c.pop();     
        }
        else if(c.empty() && a[i]) {
            c.push(a[i]);
        }
    }
        for(int i = 0; i < b.size(); i++) {
        if(b[i] != '#') {
            d.push(b[i]);
        }
        else if(!d.empty() && b[i] == '#') {
            d.pop();     
        }
        else if(d.empty() && b[i]) {
            d.push(b[i]);
        }

}
        if( c.size() == d.size()) {
            cout<<"Yes"<<endl;
        }
        else {
            cout<<"No"<<endl;
        }
}
