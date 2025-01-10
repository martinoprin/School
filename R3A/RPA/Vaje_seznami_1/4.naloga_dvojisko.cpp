#include <iostream>
#include <string>
#include <cmath>

using namespace std;

struct El {
    int x;          // Data
    struct El* next; // Pointer to the next element
} *start = nullptr;  // Declare a global pointer 'start' and initialize it to nullptr

void Push(int a);
void Desetisko();
void Osmisko();
void DeleteAll();

int main(){
    
    cout << "Vnesi 0 ali 1: ";
    int vnos = 0;
    while(vnos != -1&& vnos == 0 || vnos == 1){
        cin >> vnos;
        Push(vnos);
    }
    Desetisko();
    Osmisko();
    DeleteAll();

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
void Desetisko(){
    struct El* tmp = start -> next;
    int stevec = 0;
    int vsota = 0;
    while(tmp != nullptr){
        vsota += tmp -> x * pow(2, stevec);
        stevec++;
        tmp = tmp -> next;
    }
    cout << vsota << endl;
}

void Osmisko(){
    struct El* tmp = start -> next;
    for(int i = 0; i >= 0; i++){
        int stevec = 0;
        int vsota = 0;
        while(tmp != nullptr && stevec < 3){
            vsota += tmp -> x * pow(2, stevec);
            stevec++;
            tmp = tmp -> next;
        }
        if(vsota == 0)
            return;
        cout << vsota << endl;
    }
}

void DeleteAll(){
    struct El *tmp = start;
    while(start != nullptr){
        tmp = start;
        start = start -> next;
        delete tmp;
    }
    cout << "Seznam prazen" << endl;
}
