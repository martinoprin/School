```cpp
#include <iostream>
#include <fstream>
#include <string.h>
#include <cstring>

using namespace std;

class Trgovina{
    private:
        char proizvajalec[21];
        char naziv_izdelka[21];
        int kolicina;
        float cena;
    public:
        void sortVpis(Trgovina &b);
        void vpis();
        bool operator>(Trgovina &b);

        char* vrniPro(){return proizvajalec;}
        char* vrniNaz(){return naziv_izdelka;}
        int vrniKol(){return kolicina;}
        float vrniCena(){return cena;}

        void nastavi();
        Trgovina operator*(int n);
        Trgovina operator--();
        bool operator==(Trgovina &b);

        Trgovina() : kolicina(0), cena(0){}
};

bool Trgovina::operator==(Trgovina &b){
    if(strcmp(proizvajalec,b.proizvajalec) == 0 && strcmp(naziv_izdelka,b.naziv_izdelka)==0 && kolicina==b.kolicina && cena==b.cena)
        return 1;
    return 0;
}

Trgovina Trgovina::operator*(int n){
    cena = cena * n;
    return *this;
}
Trgovina Trgovina::operator--(){
    kolicina--;
    nastavi();
    return *this;
}


void Trgovina::nastavi(){
    if(kolicina<0)
        kolicina = 0;
}

bool Trgovina::operator>(Trgovina &b){
    if(strcmp(naziv_izdelka, b.naziv_izdelka) > 0)
        return 1;
    return 0;
}

void Trgovina::sortVpis(Trgovina &b){
    Trgovina a;
    bool flag = false;
    ofstream datao("tmp.bin", ios::binary);
    ifstream datai("Trgovina.bin", ios::binary);
    while(datai.read((char*)&a, sizeof(a))){
        if(a>b && !flag){
            datao.write(((char*)&b), sizeof(b));
            flag = 1;

        }
        datao.write(((char*)&a), sizeof(a));
    }
    if(!flag){
        datao.write(((char*)&b), sizeof(b));
    }
    datai.close();
    datao.close();
    remove("Trgovina.bin");
    rename("tmp.bin", "Trgovina.bin");
}

void Trgovina::vpis(){
    Trgovina a;
    fgets(a.proizvajalec, 21, stdin);
    fgets(a.naziv_izdelka, 21, stdin);
    cin >> a.kolicina;
    cin >> a.cena;
    cin.ignore();
    a.sortVpis(a);
}

void vpisTxt(){
    ofstream datao("Proizvajalec.txt", ios::app);
    string proizvajalec;
    getline(cin, proizvajalec);
    datao<<proizvajalec<<endl;
    datao.close();

}
... (46 lines left)
Collapse
message.txt
4 KB
OPRIN10 — Today at 7:50 AM
#include <iostream>
#include <fstream>
#include <cstring>

using namespace std;

class Trgovina{
    char naziv[21];

    public:
        void vpis();
        void sortVpis(Trgovina &a);
        bool operator>(Trgovina &a);
};

bool Trgovina::operator>(Trgovina &a){
    return (strcmp(naziv, a.naziv)>0);
}

void Trgovina::sortVpis(Trgovina &a){
    Trgovina b;
    bool flag = 0;
    ofstream datao("tmp.bin", ios::binary);
    ifstream datai("Trgovina.bin", ios::binary);
    while(datai.read((char)&b,sizeof(b))){
        if(b>a && !flag){
            datao.write((char)&a, sizeof(a));
            flag = 1;
        }
        datao.write((char)&b, sizeof(b));
    }
    if(!flag)
        datao.write((char)&a, sizeof(a));
    datao.close();
    datai.close();
    remove("Trgovina.bin");
    rename("tmp.bin", "Trgovina.bin");

}

void Trgovina::vpis(){
    cout << "Naziv: " << endl;
    Trgovina a;
    fgets(a.naziv, 21, stdin);
    a.sortVpis(a);
}




int main(){
    ofstream datao("Trgovina.bin", ios::binary | ios::app);
    datao.close();
    Trgovina a;
    a.vpis();

    return 0;
}
﻿
```cpp
#include <iostream>
#include <fstream>
#include <string.h>
#include <cstring>

using namespace std;

class Trgovina{
    private:
        char proizvajalec[21];
        char naziv_izdelka[21];
        int kolicina;
        float cena;
    public:
        void sortVpis(Trgovina &b);
        void vpis();
        bool operator>(Trgovina &b);

        char* vrniPro(){return proizvajalec;}
        char* vrniNaz(){return naziv_izdelka;}
        int vrniKol(){return kolicina;}
        float vrniCena(){return cena;}

        void nastavi();
        Trgovina operator*(int n);
        Trgovina operator--();
        bool operator==(Trgovina &b);

        Trgovina() : kolicina(0), cena(0){}
};

bool Trgovina::operator==(Trgovina &b){
    if(strcmp(proizvajalec,b.proizvajalec) == 0 && strcmp(naziv_izdelka,b.naziv_izdelka)==0 && kolicina==b.kolicina && cena==b.cena)
        return 1;
    return 0;
}

Trgovina Trgovina::operator*(int n){
    cena = cena * n;
    return *this;
}
Trgovina Trgovina::operator--(){
    kolicina--;
    nastavi();
    return *this;
}


void Trgovina::nastavi(){
    if(kolicina<0)
        kolicina = 0;
}

bool Trgovina::operator>(Trgovina &b){
    if(strcmp(naziv_izdelka, b.naziv_izdelka) > 0)
        return 1;
    return 0;
}

void Trgovina::sortVpis(Trgovina &b){
    Trgovina a;
    bool flag = false;
    ofstream datao("tmp.bin", ios::binary);
    ifstream datai("Trgovina.bin", ios::binary);
    while(datai.read((char*)&a, sizeof(a))){
        if(a>b && !flag){
            datao.write(((char*)&b), sizeof(b));
            flag = 1;

        }
        datao.write(((char*)&a), sizeof(a));
    }
    if(!flag){
        datao.write(((char*)&b), sizeof(b));
    }
    datai.close();
    datao.close();
    remove("Trgovina.bin");
    rename("tmp.bin", "Trgovina.bin");
}

void Trgovina::vpis(){
    Trgovina a;
    fgets(a.proizvajalec, 21, stdin);
    fgets(a.naziv_izdelka, 21, stdin);
    cin >> a.kolicina;
    cin >> a.cena;
    cin.ignore();
    a.sortVpis(a);
}

void vpisTxt(){
    ofstream datao("Proizvajalec.txt", ios::app);
    string proizvajalec;
    getline(cin, proizvajalec);
    datao<<proizvajalec<<endl;
    datao.close();

}

void izpis(){
    Trgovina a;
    ifstream datai("Trgovina.bin", ios::binary);
    while(datai.read((char *)&a, sizeof(a))){
        cout << a.vrniPro() << a.vrniNaz() << a.vrniKol() << endl  << a.vrniCena() << "\n\n";
    }
    datai.close();
}

void najdrazji(){
    Trgovina a;
    Trgovina b;
    ifstream datai("Trgovina.bin", ios::binary);
    while(datai.read((char*)&a, sizeof(a))){
        if(a.vrniCena() > b.vrniCena()){
            b = a;
            cout << "kle";
        }
    }
    datai.close();
    datai.open("Trgovina.bin", ios::binary);
    ofstream datao("tmp.bin", ios::binary);
    while(datai.read((char*)&a, sizeof(a))){
        if(a==b){
            b*5;
            datao.write((char*)&b, sizeof(b));
        }
        else{datao.write((char*)&a, sizeof(a));}
    }
    datai.close();
    datao.close();
    remove("Trgovina.bin");
    rename("tmp.bin", "Trgovina.bin");
}

int main(){
    Trgovina a;
    //a.vpis();
    //izpis();
    //vpisTxt();
    najdrazji();
    izpis();

    return 0;
}
```
