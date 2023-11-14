#include <iostream>
#include <algorithm>
using namespace std;
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
    int height(node *cur, int& diameter) {
        if (cur == NULL)
            return 0;
        int lH = height(cur->left, diameter);
        int rH = height(cur->right, diameter);
        diameter = max(diameter, lH + rH);
        return 1 + max(lH, rH);
    }
    int getPath(node *root) {
        int diameter = 0;
        height(root, diameter);
        return diameter;
    }
};
int main() {
    int n; cin >> n;
    binary *b = new binary();
    for(int i = 0; i < n; i++) {
        int a; cin >> a;
        if (b->root == NULL)
            b->root = b->add(b->root, a);
        else
            b->add(b->root, a);
    }
    cout << b->getPath(b->root) + 1;
}