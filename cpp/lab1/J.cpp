#include <bits/stdc++.h>
using namespace std;
int main() {
    string s;
    int n;
    deque<int> d;
    while(true) {
        cin>>s;
        if(s == "!") {
            break;
        }
        if(s == "*") {
            if(d.empty()){
                cout<<"error"<<endl;
            }        
            else {
                cout<<d.front() + d.back()<<endl;
                if(!d.empty()) d.pop_front();
                if(!d.empty()) d.pop_back();
        }
        }
        if(s=="+"){
            cin>>n;
            d.push_front(n);
        }
        else if(s=="-") {
            cin>>n;
            d.push_back(n);
        }


    }
}