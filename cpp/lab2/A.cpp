#include <bits/stdc++.h>
using namespace std;
struct Node {
    int d;
    Node*next;
    Node(int x){
        d = x;
        next = NULL;

    }
};
struct LinkedList{
    Node*head=NULL;
    Node*tail=NULL;
    void insert(int v){
        Node*node = new Node(v);
        if(head == NULL) {
            head= tail= node;
        }
        else{
            tail -> next = node;
            tail = node;
        }
    }
    void near(int m, int n){
        Node*c = head;
        int find = 100000, p;
        for(int i =0; i < n; i++) {
            if(find>abs(m-c -> d)){
                find = abs(m-c -> d);
                p = i;
            }
            c = c -> next;
        }
        cout<<p;
    }
};
    int main() {
        LinkedList l;
        int n; 
        cin>>n;
        for(int i =0; i < n; i++){
            int a; 
            cin>>a;
            l.insert(a);
        }
        int m;
        cin>>m;
        l.near(m, n);
    }
