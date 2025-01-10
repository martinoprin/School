#include <iostream>
#include <string>

using namespace std;

struct Clovek{
        string ime;
        string priimek;
        int visina;
        struct Clovek* next;
    } *start = nullptr;
    void Push(string ime, string priimek, int visina);
    void Izpis();
    void Stevec();

int main(){

    int visina;
    string ime, priimek;
    for(int i = 0; i < 3; i++){
    cin >> ime >> priimek >> visina;
    Push(ime, priimek, visina);
}


    
    Izpis();
    Stevec();

    return 0;
}

    void Push(string ime, string priimek, int visina){
        struct Clovek* tmp = new struct Clovek;
        tmp -> ime = ime;
        tmp -> priimek = priimek;
        tmp -> visina = visina;

        if(start == nullptr){
            start = tmp;
            start -> next = nullptr;
        }
        else{
            struct Clovek* prev = nullptr;
            struct Clovek* cur = start;

            while(cur != nullptr && cur -> visina > tmp->visina){
                prev = cur;
                cur = cur -> next;
            }
            if(cur == start){
                tmp -> next = start;
                start = tmp;
            }
            else if(cur == nullptr){
                prev -> next = tmp;
                tmp -> next = nullptr;
            }
            else{
                prev -> next = tmp;
                tmp -> next = cur;
            }

        }

        
    }

    void Izpis(){
    struct Clovek *tmp = start;
    while(tmp!=nullptr){
        cout << tmp -> visina << " ";
        tmp = tmp -> next;
    }
    cout << endl;
}

void Stevec(){
    struct Clovek *tmp = new struct Clovek;
    tmp = start;
    int count = 0;
    while(tmp!=nullptr){
        count++;
        tmp = tmp -> next;
    }
    cout << count << endl;
    

}