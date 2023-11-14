#include <iostream>
using namespace std;
struct node{
    int n;
    node *left;
    node *right;
    node(int x){
        this->n = x;
        this-> left = this-> right = NULL;

    }
};
struct binary{
    node*t;
    binary(){
        this->t = NULL;
    }
    node*add(node *cur, int x){
        if(cur == NULL) {
            cur = new node(x);
        }
        else if (cur ->n>x) {
            if(cur -> left == NULL)
                cur->left = add(cur->left, x);
            else
                add(cur->left, x);
        }
        else{
            if(cur->right == NULL)
                cur -> right = add(cur->right, x);
            else
                add(cur->right, x);
        }
        return cur;
    }
    node*google (node*cur, int x){
        if(cur==NULL)
            return NULL;
        else if(cur->n==x)
            return cur;
        else if(cur->n > x)
            return google(cur->left, x);
        else if (cur->n < x)
            return google(cur->right,  x);
    }
    void targettree(node*cur){
        if(cur!=NULL){
            targettree(cur->left);
            cout<<cur->n<<" ";
            targettree(cur->right);
        }
    }
    int pcs(node*cur, int cnt){
        if(cur != NULL){
            if(cur->right!=NULL && cur->left != NULL)
                cnt++;
            cnt =pcs(cur->left, cnt);
            cnt =pcs(cur->right,cnt);
        }
        return cnt;
    }

};
int main(){
    int n; cin>>n;
    binary *b = new binary();
    for(int i =0; i<n;i++){
        int x; cin>>x;
        if(b->t==NULL)
            b->t = b->add(b->t, x);
        else
            b->add(b->t,x);
    }
    cout<<b->pcs(b->t, 0);
}