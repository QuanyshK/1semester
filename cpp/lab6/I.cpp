#include <iostream>
#include <algorithm>
using namespace std;
bool check(char a, char b) {
        return a < b;
}
int partition(char a[], int left, int right, char pivot) {
    while(left <= right) {
        while(check(a[left], pivot)) {
            left++;
        }
        while(check(pivot, a[right])) {
            right--;
        }
        if (left <= right) {
            swap(a[left], a[right]);
            left++;
            right--;
        }
    }
    return left;
}
void QuickSort(char a[], int left, int right) {
    if (left >= right) {
        return;
    }
    char pivot = a[(left + right)/2];
    int index = partition(a, left, right, pivot);
    QuickSort(a, left, index - 1);
    QuickSort(a, index, right);
}
int main() {
    string s; cin>>s;
    char a[s.size()];
    for(int i =0; i< s.length(); i++){
        a[i]= s[i];
    }
    QuickSort(a, 0, s.size() -1);
    for(int i =0; i<s.length(); i++){
        cout<<a[i];
    }
}