#include <iostream>
#include <vector>
using namespace std;
vector <int> balance;
struct node {
    int m;
    node *left;
    node *right;

    node (int x) {
        this->m = x;
        this->left = this->right = NULL;
    }
};
struct binary {
    node *root;
    vector <int> v;
    binary () {
        this->root = NULL;
    }

    node *add (node *cur, int x) {
        if (cur == NULL) {
            cur= new node(x);
        }
        else if (cur->m == x) {
            return cur;
        }
        else if (cur->m > x) {
            if (cur->left == NULL)
                cur->left = add(cur->left, x);
            else
                add(cur->left, x);
        }
        else {
            if (cur->right == NULL)
                cur->right = add(cur->right, x);
            else
                add(cur->right, x);
        }
        return cur;
    }
    node *google (node *cur, int x) {
        if (cur == NULL)
            return NULL;
        if (cur->m == x)
            return cur;
        else if (cur->m > x)
            return google(cur->left, x);
        else if (cur->m < x)
            return google(cur->right, x);
    }
    void print(node *cur){
        if(cur != NULL){
            print(cur->left);
            cout << cur->m << " ";
            print(cur->right);
        }
    }
};

int main() {
    binary *b = new binary();
    int n, m;
    cin>>n>>m;
    for(int i =0; i<n; i++){
        int a; cin>>a;
        if(b->root==NULL)
            b->root= b->add(b->root, a);
        else    
            b->add(b->root, a);
    } 
    while(m--){
        string s; cin>>s;
        node*cur  = b->root;
        for(int i=0; i<s.length(); i++){
            if(cur==NULL){
                break;
            }
            if(s[i]=='L'){
                cur = cur->left;
            }
            if(s[i]=='R'){
                cur = cur->right;
            }

        }
        if(cur!=NULL)
            cout<<"YES\n";
        else
            cout<<"NO\n";
    }
}