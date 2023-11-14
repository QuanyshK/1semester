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
    void inorder(node*cur){
        if(cur!=NULL){
            inorder(cur->right);
            v.push_back(cur->m);
            inorder(cur->left);
        }
    }
    void balbinary(int left, int right){
        if(left > right)
            return;
        else {
            int mid = left + (right -  left)/2;
            balance.push_back(v[mid]);
            balbinary(left, mid-1);
            balbinary(mid+1, right);
        }
    }
};
int main() {
    int n; cin >> n;
    binary *b = new binary();
    n =(1<<n)-1;
    for(int i = 0; i < n; i++) {
        int a; cin >> a;
        if (b->root == NULL)
            b->root = b->add(b->root, a);
        else
            b->add(b->root, a);
    }
    b->inorder(b->root);
    b->balbinary(0, n-1);
    for(int i=0;i<n; i++){
        cout<<balance[i]<<" ";
    }
}