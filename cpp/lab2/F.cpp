#include <bits/stdc++.h>
using namespace std;
struct node{
    int d;
    node*next;
    node() {
        this->d = 0;
        this->next = NULL;

    }
    node(int x) {
        this -> d=x;
        this -> next = NULL;
    }
    node(int x, node*next) {
        this->d = x;
        this->next = next;
    }
};
int main() {
    int n;
    cin>>n;
    node*head;
    node*c;
    for(int i =0; i< n; i++) {
        int m;
        cin>>m;
        if(i==0) {
            head = new node(m);
            c = head;
        }
        else {
            c->next = new node(m);
            c = c->next;
        }
    }
    int ndata;
    cin>>ndata;
    int p;
    cin>>p;
    int cnt = 0;
    c = head;
    while(cnt < p - 1) {
        c = c-> next; 
        cnt++;
    }
    if(p == 0) {
        head = new node(ndata, c);
    }
    else{
        node*newnode = new node(ndata, c->next);
        c->next = newnode;
    }
    while(head != NULL) {
        cout<<head ->d<<" ";
        head = head->next;
    }
}