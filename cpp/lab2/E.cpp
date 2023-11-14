#include <bits/stdc++.h>
using namespace std;
int cn = 0;
struct node {
    string s;
    int cnt, cnt2;
    node*next;
    node*prev;
    node(string s) {
        this -> s = s;
        next = NULL;
        prev = NULL;
        cnt = 1;
        cnt2 = 0;
    }
};
struct linkedlist{
    public:
        node*head = NULL;
        node*tail = NULL;
        void insert(string s) {
            node * newnode = new node(s);
            if(head == NULL){
                head = tail = newnode;
                cn++;
            }
            else{
                if(tail -> s == s) {
                    tail->cnt++;
                }
                else{
                    if(newnode -> cnt > 1) {
                        newnode -> cnt2++;
                        cn--;
                    }
                    else {
                        tail->next = newnode;
                        newnode -> prev = tail;
                        tail = newnode;
                        cn++;
                    }
                }
            }
        }
        void out() {
            node * c = tail;
            while(c!=NULL) {
                if(c->cnt2 ==0) {
                    cout<<c->s<<endl;
                }
                c = c->prev;
            }
        }
};
int main() {
    int n;
    cin>>n;
    linkedlist l;
    while(n--) {
        string s;
        cin>>s;
        if(s  != ""  &&  s != " "){
            l.insert(s);
        }
    }
    cout<<"All in all: "<<cn<<"\nStudents:\n";
    l.out();
}