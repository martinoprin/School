#include <iostream>
#include <string>

using namespace std;

struct El {
    int x;          // Data
    struct El* next; // Pointer to the next element
} *start = nullptr;  // Declare a global pointer 'start' and initialize it to nullptr

void Push(int a);
void Najdi(int a);
void obrnjenIzpis();

int main(){
    
    int vnos;
    for(int i = 0; i < 5; i++){
        cin >> vnos;
        Push(vnos);
    }
    int iskano_st;
    cout << "Vnesi iskano stevilo: ";
    cin >> iskano_st;
    Najdi(iskano_st);
    obrnjenIzpis();

    return 0;
}

void Push(int a){
    struct El* tmp = new struct El; // Create a new element
    tmp -> x = a; // Set the data of the new element to 'a'

    if(start == nullptr){ // If the linked list is empty, set 'start' to the new element
        start = tmp;
        start -> next = nullptr;
    }
    else{
        tmp -> next = start;
        start = tmp;
    }

}

void Najdi(int a){
    struct El *tmp = start;
    while(tmp!=nullptr){
        if(tmp -> x == a){
            cout << "Najdeno" << endl;
            return;
        }
        tmp = tmp -> next;
    }
    cout << "Ni najdeno" << endl;
}

void obrnjenIzpis(){
    struct El *tmp = start;
    while(tmp!=nullptr){
        cout << tmp -> x << " ";
        tmp = tmp -> next;
    }
    cout << endl;
}