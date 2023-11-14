#include <bits/stdc++.h>
using namespace std;
struct Node {
    string s;
    Node*next;
    Node() {}
    Node(string s) {
        this->s =s;
        this->next =NULL;
    }
};
Node* cycle(Node*head, int n) {
    Node*c= head;
    while(c->next){
        c = c ->next;
    }
    for(int i = 0; i < n; i++) {
        c ->next = head;
        head = head ->next;
        c = c -> next;
        c -> next = NULL;
    }
    return head;
}
void out(Node*head) {
    Node*c = head;
    while(c!=NULL) {
        cout<<c->s<<" ";
        c = c->next;
    }
    cout<<endl;
}
int main() {
    int n;
    cin>>n;
    int m;
    cin>>m;
    Node*head;
    Node*c;
    for(int i=0;i< n; i++){
        string s; 
        cin>>s;
        if(i==0) {
            head = new Node(s);
            c = head;
        }
        else {
            c -> next = new Node(s);
            c =c ->next;
        }
    }
    head = cycle(head, m);
    out(head);
}