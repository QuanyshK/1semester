#include <bits/stdc++.h>
using namespace std;
struct node{
    char d;
    node*next;
    node(){}
    node(int n) {
        this->d = n;
        this->next = NULL;
        }
};
int main() {
    int n;
    cin>>n;
    while(n--){
        node*head=NULL;
        node*c = head;
        map<char,int> maps;
        int n;
        cin>>n;
        for(int i =0; i<n; i++){
            char a;
            cin>>a;
            if(i==0 || head == NULL){
                head = new node(a);
                c = head;
                maps[a]++;
            }
            else{
                c->next = new node(a);
                c = c->next;
                maps[a]++;
            }
            while((head->d == c->d || maps[head->d]>1) && head !=c){
                node*oog = head;
                maps[head->d]++;
                head = head->next;
                delete oog;
            }
            if(head == c && i!=0 &&maps[c->d]> 1){
                cout<<-1<<" ";
                head = head->next;
            }
            else{
                cout<<head->d<<" ";
            }
        }
        cout<<"\n";
    }
}
