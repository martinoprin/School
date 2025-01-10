#include <iostream>
using namespace std;

struct El {  
    int x;
    struct El* next;
} *start = nullptr;

void Push(int a); 
void Izpis();
int Povprecje();
void Izbris();

int main() {
    srand(time(NULL));
    for(int i = 0; i < 10; i++){
    Push(rand()%35+21);
    }
    Izpis();
    cout << endl << Povprecje() << endl;
    Izbris();
    Izpis();
    
    return 0;
}

void Push(int a) { 
    struct El* tmp = new struct El;
    tmp->x = a;
    if (start == nullptr) {
        start = tmp;
        start->next = nullptr;
    } else {
        struct El *t = start;
        while (t->next != nullptr) {
            t = t->next;
        }
        t->next = tmp;
        tmp->next = nullptr;
    }
}
void Izpis(){
    struct El *tmp = start;
    while(tmp!=nullptr){
        cout << tmp -> x << " ";
        tmp = tmp -> next;
    }
}
int Povprecje(){
    struct El *tmp = start;
    int povprecje = 0;
    while(tmp!=nullptr){
        povprecje+=tmp -> x;
        tmp = tmp -> next;
    }
    povprecje /= 10;
}

void Izbris(){
    struct El *tmp = start;
    if(start == nullptr)
        cout << "Prazen seznam";
    else{
    while(tmp!=nullptr){
        start = start -> next;
        delete tmp;
        tmp = start;
    }
    }
}
