#include <iostream>
#include <algorithm>
#include <vector>
using namespace std;
struct node {
    int d; 
    node*next;
    node(int x) {
        this -> d = x;
        this->next = NULL;
    }
};
int main() {
    int n;
    cin>>n;
    vector<int> v(10000);
    node*head;
    node*c;
    for(int i=0; i<n;i++){
        int m;
        cin>>m;
        if(i==0) {
            head = new node(m);
            c = head;
        }
        else {
            c -> next = new node(m);
            c = c ->next;
        }
    }
    c = head;
    while(n--) {
        int m = c->d;
        v[m]++;
        c = c->next;
    }
    int mxfr= *max_element(v.begin(), v.end());
    for(int i = v.size()-1; i>=0; i--){
        if(v[i]==mxfr){
            cout<<i<<" ";
        }
    }
}