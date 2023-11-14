#include <iostream>
#include <algorithm>
#include <string>

using namespace std;
bool check(int a[], int b[]) {
    if (a[2] == b[2]) {
        if (a[1] == b[1]) {
            return a[0] < b[0];
        }
        else
            return a[1] < b[1];
    }
    else
        return a[2] < b[2];
}
int partition(int a[][3], int left, int right) {
    int pivot = right;
    int i = left - 1;
    for (int j = left; j <= right - 1; j++) {
        if (check(a[j], a[pivot])) {
            i++;
            swap(a[j], a[i]);
        }
    }
    swap(a[i + 1], a[pivot]);
    return i + 1;
}
void QuickSort(int a[][3], int left, int right){
    if(left >= right){
        return;
    }
    int index = partition(a, left, right);
    QuickSort(a, left, index -1);
    QuickSort(a, index+1, right);
}
int main(){
    int n; cin>>n;
    int d[n][3];
    for(int i =0; i<n; i++){
        string s; cin>>s;
        int day = stoi(s.substr(0,2));
        int month = stoi(s.substr(3,2));
        int year = stoi(s.substr(6,4));
        d[i][0] = day;
        d[i][1] = month;
        d[i][2] = year;
    }
    QuickSort(d, 0, n-1);
    for(int i =0; i< n; i++){
        if(d[i][0] < 10)
            cout<<"0";
        cout<<d[i][0]<<"-";

        if(d[i][1]<10)
            cout<<"0";
        cout<<d[i][1] <<"-"<<d[i][2]<<"\n";
    }
}