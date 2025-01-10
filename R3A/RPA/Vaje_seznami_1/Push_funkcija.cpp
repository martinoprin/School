#include<iostream>
using namespace std;

struct El {
    int x;          // Data
    struct El* next; // Pointer to the next element
} *start = nullptr;  // Declare a global pointer 'start' and initialize it to nullptr

void Push(int a);
void Izpis();

int main(){
    
    int vnos;
    for(int i = 0; i < 5; i++){
        cin >> vnos;
        Push(vnos);
    }
    Izpis();

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
        struct El* t = start;
        while(t->next != nullptr){
            t = t -> next;
        }
        t -> next = tmp;
        tmp -> next = nullptr;
    }

}



void Izpis(){
    struct El *tmp = start;
    while(tmp!=nullptr){
        cout << tmp -> x << " ";
        tmp = tmp -> next;
    }
}