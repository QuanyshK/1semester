#include <bits/stdc++.h>
using namespace std;
int main() {
    string s;
    cin>>s;
    stack<char> a;
    for(int i = 0; i<s.size(); i++) {
        if(!a.empty() && a.top() == s[i]) {
            a.pop();
        }
        else {
            a.push(s[i]);
        }
    }
    if(a.empty()) cout<<"YES";
    else cout<<"NO";
}