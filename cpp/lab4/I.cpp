#include <iostream>

using namespace std;

struct node {
	int data;
    int mult;
	node* left;
	node* right;

	node(int data) {
		this->data = data;
        this->mult = 1;
		left = NULL;
		right = NULL;
	} 
};

node* getMin(node* root) {
	while (root->left != NULL) {
		root = root->left;
	}
	return root;
}

node* add(node* root, int data) {
	if (root == NULL) {
		return new node(data);
	}
     else if (root->data == data) {
        root->mult += 1;
    }
     else if (root->data > data) {
		if (root->left == NULL) {
			root->left = new node(data);
		} else {
			root->left = add(root->left, data);
		}
	} else if (root->data < data) {
		if (root->right == NULL) {
			root->right = new node(data);
		} else {
			root->right = add(root->right, data);
		}
	}
	return root;
}

node* deleteNode(node* root, int data) {
	if (root == NULL) {
		return NULL;
	} else if (root->data > data) {
		root->left = deleteNode(root->left, data);
		return root;
	} else if (root->data < data) {
		root->right = deleteNode(root->right, data);
		return root;
	} else if (root->mult == 0) {
		if (root->left == NULL && root->right == NULL) {
			delete root;
			return NULL;
		} else if (root->right == NULL) {
			node* temp = root->left;
			delete root;
			return temp;
		} else if (root->left == NULL) {
			node* temp = root->right;
			delete root;
			return temp;
		} else {
			node* temp = getMin(root->right);
			root->data = temp->data;
			root->right = deleteNode(root->right, temp->data);
			return root;
		}
	}
    else {
        root->mult -= 1;
        return root;
    }
}

node* find(node* root, int x) {
	if (root == NULL) {
		return NULL;
	} else if (root->data == x) {
		return root;
	} else if (root->data < x) {
		return find(root->right, x);
	} else {
		return find(root->left, x);
	}
}

int main() {
    int n; cin >> n;
    node *root = NULL;
    for(int i = 0; i < n; i++) {
        string s; cin >> s;
        int x; cin >> x;
        if (s == "insert") {
            root = add(root, x);
        }
        if (s == "cnt") {
            node *found = find(root, x);
            if(found == NULL)
                cout << 0 << "\n";
            else
                cout << found->mult << "\n";
        }
        if (s == "delete") {
            deleteNode(root, x);
        }
    }
}