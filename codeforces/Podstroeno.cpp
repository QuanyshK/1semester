#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;
const int N = 100;
int t, n;
vector<int>s(N);
vector<int>e(N);
int main(){
    cin>>t;
    for(int j = 0;j<t; ++j){
        cin>>n;
        for(int i =0; i<n;++i){
            cin>>s[i]>>e[i];
        }
        bool o = true;
        for(int i= 1; i< n; ++i)
            if(s[i]>=s[0]&& e[i]>=e[0])
                o = false;
        if(!o){
            cout<<"-1"<<endl;
            continue;
        }
        cout<<s[0]<<endl;
    }
}