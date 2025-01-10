#include <iostream>
#include <string>

using namespace std;

struct El {
    int st;
    string ime;
    int cena;      
    struct El* next; 
} *start = nullptr; 

void Push(int a, string b, int c);
void Izpis();

int main(){
    
    int st = 1, cena;
    string ime;
    while(st != 0){
        cout << "Vnesi st, ime, cena: ";
        cin >> st;
        if(st == 0){
            cout << "Napacen vnos" << endl;
            Izpis();
            return 0;
        }
        cin >> ime >> cena;
        Push(st, ime, cena);
    }
    
    Izpis();
   

    return 0;
}

void Push(int a, string b, int c){
    struct El* tmp = new struct El; // Create a new element
    if(a == 0){
        return;
    }
    tmp -> st = a;
    tmp -> ime = b;
    tmp -> cena = c;

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
        cout << tmp -> ime << " ";
        tmp = tmp -> next;
    }
    cout << endl;
}

