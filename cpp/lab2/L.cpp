#include <bits/stdc++.h>
using namespace std;
struct node{
    int d;
    node*next;
    node(int x){
        this->d=x;
        this->next=NULL;
    }
};
int main() {
    int n;
    cin>>n;
    node*head;
    node*c=head;
    for(int i=0; i<n; i++){
        int m;
        cin>>m;
        if(i==0){
            head = new node(m);
            c = head;
        }
        else{
            c->next = new node(m);
            c= c->next;
        }
    }
    node*j = head;
    int globalmx = j->d, localmx = j->d;
    j=j->next;
    while(j!=NULL){
        localmx = max(j->d, j-> d + localmx );
        if(localmx > globalmx) 
            globalmx = localmx;
        j =j->next;
    }
    cout<<globalmx;
}