#include <iostream>
using namespace std;
struct node {
    int d;
    node*next;
    node(int x) {
        this->d = x;
        this ->next  = NULL;

    }
    node() {
        this->d = 0;
        this->next = NULL;
    }
    node(int x, node*next) {
        this->d = x;
        this->next = next; 
    }
};
int main() {
    node*head;
    node*c;
    int n;
    cin>>n;
    for(int i=0; i < n; i++){
        int m;
        cin>>m;
        if(i==0) {
            head = new node(m);
            c = head;
        }
        else  if(i%2==0) {
            c->next = new node(m);
            c =c->next;
        }
    }
    while(head != NULL){
        cout<<head->d<<" ";
        head = head -> next;
    }
}