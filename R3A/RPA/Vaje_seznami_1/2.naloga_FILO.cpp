#include <iostream>
#include <string>

using namespace std;

struct El {
    int x;          // Data
    struct El* next; // Pointer to the next element
} *start = nullptr;  // Declare a global pointer 'start' and initialize it to nullptr

void Push(int a);
void Izpis();
void IzbrisiPrvoMesto();
void BrisanjeIzMesta(int mesto); // Delete an element from a given position

int main(){
    
    int vnos;
    for(int i = 0; i < 5; i++){
        cin >> vnos;
        Push(vnos);
    }
    Izpis();
    //IzbrisiPrvoMesto();
    BrisanjeIzMesta(6);
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
        tmp -> next = start;
        start = tmp;
    }

}


void Izpis(){
    struct El *tmp = start;
    while(tmp!=nullptr){
        cout << tmp -> x << " ";
        tmp = tmp -> next;
    }
    cout << endl;
}

void IzbrisiPrvoMesto(){
    struct El *tmp = start;
    start = start -> next;
    delete tmp;
}

void BrisanjeIzMesta(int mesto){
    struct El *tmp = start;
    struct El *tmp2 = start;
    if(mesto == 1){
        IzbrisiPrvoMesto();
        return;
    }
    if(mesto < 0){
        cout << "Invalid position to delete" << endl;
        return;
    }
    if(mesto > 5){
        cout << "Vnesli ste preveliko stevilo";
        return;
    }
    if(start == nullptr){
        cout << "Linked list is empty" << endl;
        return;
    }
    int i = mesto;
    while(tmp ->next != nullptr && i != 1){
        i--;
        tmp2 = tmp;
        tmp = tmp -> next;  
    }
    if (mesto == 0) {
        start = start->next;
    } else if (tmp) {
        tmp2->next = tmp->next;
        delete tmp;
    } else {
        cout << "Invalid position to delete" << endl;
    }

}