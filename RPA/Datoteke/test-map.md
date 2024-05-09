OPRIN10
martinoprin
Online
OPRIN10's Group

OPRIN10 — 07/18/2023 12:10 PM
Spoštovani,

pišem vam za prijavno na kadrovsko štipendijo.
Vpisan sem v 3. letnik računalniškega oddelka na Vegovi v Ljubljani.
Že od mladih let se zanimam za računalnike tako programski kot tudi fizični del.
V 2. letniku sem obiskoval tudi nekaj dodatnih internesnih dejavnosti kot so Arduino, Blender, GitHub...

Lepo pozdrav,

Martin Oprin
OPRIN10 — 08/03/2023 3:52 PM
Image
OPRIN10 — 08/07/2023 6:13 PM
Attachment file type: acrobat
115800751_53325d98cdb90e52d3b90963e974067c.pdf
564.19 KB
OPRIN10 — 08/28/2023 11:46 PM
780 62 3000
OPRIN10 — 11/23/2023 10:45 PM
Image
OPRIN10 — 11/24/2023 1:00 AM
Image
OPRIN10 — 11/28/2023 10:26 AM
#include <iostream>
#include <cstring>
using namespace std;


void Izpisi(char *px,int n) {
Expand
kazaci_premikanje_po_tabeli.cpp
1 KB
#include <iostream>
using namespace std;

int main()
{
char x[11];int n=10;
Expand
kazalci_tabele.cpp
1 KB
#include <iostream>



int main()
{
Expand
kazalci_zlo_basic.cpp
1 KB
#include <iostream>

int rekurzija(int n) {
if(n == 1) {return a1;}
if(n == 2) {return a2;}
if(n == 2) {return a3;}
Expand
rekurzija_basic.cpp
1 KB
#include <iostream>

struct El {
int x;
struct El *next;
}*start=nullptr;
Expand
reurzija_seznam_rikvrc.cpp
1 KB
#include <iostream>

struct El {
struct El *next, *prev;
int x;
}*start=nullptr,*end=nullptr;
Expand
2str_NEUREJEN_sez.cpp
2 KB
#include <iostream>
#include <time.h>
struct El {
struct El *next, *prev;
int x;
}*start=nullptr,*end=nullptr;
Expand
2str_UREJEN_sez.cpp
2 KB
#include <iostream>

struct El {
struct El *next, *prev;
int x;
}*start=nullptr,*end=nullptr;
Expand
2str_BRISANJE_neurejen_sez.cpp
2 KB
OPRIN10 — 11/28/2023 11:43 AM
#include <iostream>
using namespace std;

struct El{
    int x;
    struct El* next;
}*start = nullptr,*start2 = nullptr, *start3 = nullptr;

void Push_Zacetek(int a);
void Izpis();


int Brisanje(int a); //brisanje iz mesta a

int main(){
    
    Push_Zacetek(1);
    Push_Zacetek(2);
    Push_Zacetek(3);
    //Push_Konec(2);
    //Push_Urejeno(3);
   
    Izpis();
    
    Brisanje(1);
    Izpis();
  
    return 0;
}

void Push_Zacetek(int a){ // na zacetek
    struct El *tmp = new struct El;
    tmp -> x = a;
    if(start == nullptr){
        start = tmp;
        tmp -> next = nullptr;
    }
    else{
        tmp -> next = start;
        start = tmp;
    }
}



void Izpis(){
    if(start == nullptr){
        
    }
    else{
    struct El*tmp = start;
    while(tmp != nullptr){
        cout << tmp -> x << endl;
        tmp = tmp -> next;
    }
    }
}
OPRIN10 — 12/01/2023 12:21 PM
Attachment file type: acrobat
Scanned_from_a_Xerox_Multifunction_Printer.pdf
336.88 KB
OPRIN10 — 12/04/2023 7:49 PM
#include <iostream>
#include <string>

using namespace std;

struct Clovek{
Expand
7.naloga.cpp
2 KB
OPRIN10 — 12/04/2023 10:41 PM
#include<iostream>
#include<time.h>
#include<cmath>

using namespace std;
Expand
IPv4-generator-v2.0.cpp
3 KB
149.178.228.24/23
OPRIN10 — 12/06/2023 3:39 PM
#include<iostream>
#include<time.h>
#include<cmath>

using namespace std;
Expand
NOV-ipv4-gen.cpp
3 KB
OPRIN10 — 12/11/2023 8:23 AM
Image
OPRIN10 — 12/13/2023 8:44 PM
Image
Image
Image
OPRIN10 — 12/14/2023 12:20 PM
Attachment file type: document
MartinOprinR3A.docx
17.28 KB
OPRIN10 — 12/18/2023 7:24 PM
#include<iostream>
#include<time.h>
#include<cmath>
#include<random>

using namespace std;
Expand
IPv4_resitve.cpp
4 KB
OPRIN10 — 01/15/2024 11:59 PM
#include<iostream>
#include<time.h>
#include<cmath>

using namespace std;

struct El {
    int x;
    struct El next,prev;
} start = nullptr,end1 = nullptr;

void Push(int tmp1){    //IP binarno v seznam
    struct El* tmp = new struct El;
    tmp -> x  = tmp1;
    if(start == nullptr){
        start = tmp;
        end1 = tmp;
        start -> next = nullptr;
        start -> prev = nullptr;
    }
    else{
        end1->next = tmp;
        tmp -> prev = end1; 
        end1 = tmp;
        end1 -> next = nullptr;
    } 
}

int izracunaj(int zacetek){ // pretvorba v decimalno
    struct El tmp = start;
    while(zacetek!=0){
        tmp = tmp -> next;
        zacetek--;
    }
    int count = 7;
    int sestevek = 0;
    while(count >= 0){
        sestevek+=(pow(2,count)tmp->x);
        tmp = tmp -> next;
        count--;
    }
    return sestevek;
}

void izpis_ip(int a, int b, int c, int d, int maska){ //izpis IP
    cout << a << "." << b << "." << c << "." << d << "/"<< maska << "\n";
}

int eksponent(int n){   //izracun eksponent
    int i = 1;
    while((pow(2,i)-2)<n){
        i++;
    }
    return i;
}

void pristej(int n){
    struct El *tmp = end1;
    int count = 1;

    while(count <= n){
        tmp = tmp -> prev;
        count++;
    }
    if(tmp->x == 0){
        tmp->x = 1;
    }
    else{
        tmp->x = 0;
        tmp = tmp -> prev;
        tmp->x = 1;
    }
}

int main(){

    srand(time(NULL));
    const short max = 32;
    int maska = 20;//rand()%18 + 8; //maske med 8 in 25
    int ip[4];
    ip[0] = rand()%255+1; 
    int maska_counter = (maska-8);

    for(int i = 0; i<24; i++){
        (maska_counter > 0) ? Push(rand() % 2) : Push(0);
        maska_counter--;
    }
for(int i = 1; i<4; i++){
        ip[i] = izracunaj(i8-8);  //mesta na katerih se zacne del seznama za vsako "."
    }
    cout << "Omrezje: ";
    izpis_ip(ip[0], ip[1], ip[2], ip[3], maska);

    int neki = (pow(2,(max-maska-1))-2)/3;

    int a = rand()%(neki+1);
    int b = rand()%(neki+1);
    int c = rand()%(neki+1);

    int stevilke[3] = {a, b, c};

    cout << endl << "Stevilo naprav:\n";
    cout << "A: " << a << "\n";
    cout << "B: " << b << "\n";
    cout << "C: " << c << "\n\n";


    cout << "Pritisni 'enter' za resitve";
    cin.ignore();
    cout << "Resitve:\n";

    for(int i=0; i<3; i++){
        if(i == 0){
            cout << "Omrezje A: ";
        }
        else if(i == 1){
            cout << "Omrezje B: ";
        }
        else{
            cout << "Omrezje C: ";
        }
        if(stevilke[i] != 0){
        for(int i = 1; i<4; i++){
            ip[i] = izracunaj(i8-8);  //mesta na katerih se zacne del seznama za vsako "."
        }
        int maska_x = max - eksponent(stevilke[i]);
        izpis_ip(ip[0], ip[1], ip[2], ip[3], maska_x);

        pristej(eksponent(stevilke[i]));
        }
    }

    return 0;
}
TO JE GENERATOR
#include<iostream>
#include<time.h>
#include<cmath>

using namespace std;

struct El {
    int x;
    struct El next,prev;
} start = nullptr,end1 = nullptr;

void Push(int tmp1){    //IP binarno v seznam
    struct El* tmp = new struct El;
    tmp -> x  = tmp1;
    if(start == nullptr){
        start = tmp;
        end1 = tmp;
        start -> next = nullptr;
        start -> prev = nullptr;
    }
    else{
        end1->next = tmp;
        tmp -> prev = end1; 
        end1 = tmp;
        end1 -> next = nullptr;
    } 
}

int izracunaj(int zacetek){ // pretvorba v decimalno
    struct El tmp = start;
    while(zacetek!=0){
        tmp = tmp -> next;
        zacetek--;
    }
    int count = 7;
    int sestevek = 0;
    while(count >= 0){
        sestevek+=(pow(2,count)tmp->x);
        tmp = tmp -> next;
        count--;
    }
    return sestevek;
}

void izpis_ip(int a, int b, int c, int d, int maska){ //izpis IP
    cout << a << "." << b << "." << c << "." << d << "/"<< maska << "\n";
}

int eksponent(int n){   //izracun eksponent
    int i = 1;
    while((pow(2,i)-2)<n){
        i++;
    }
    return i;
}

void pristej(int n){
    struct El *tmp = end1;
    int count = 1;

    while(count <= n){
        tmp = tmp -> prev;
        count++;
    }
    if(tmp->x == 0){
        tmp->x = 1;
    }
    else{
        tmp->x = 0;
        tmp = tmp -> prev;
        tmp->x = 1;
    }
}

int main(){

    srand(time(NULL));
    const short max = 32;
    int maska;
    int ip[4];
    cin >> ip[0] >> ip[1] >> ip[2] >> ip[3];
    cout << "Maska: ";
    cin >> maska;
    int maska_counter = (maska-8);

    int eksponent1 = 7;
    for(int i = 1; i < 4; i++){
    eksponent1 = 7;
    while(eksponent1 >= 0){
        if(ip[i]>=(pow(2, eksponent1))){    //zapisemo ip[0],ip[1],ip[2] v binarno
            ip[i]-=pow(2, eksponent1);
            Push(1);
        }
        else{
            Push(0);
        }
        eksponent1--;
    }
    cout << endl;
    }
for(int i = 1; i<4; i++){
        ip[i] = izracunaj(i8-8);  //mesta na katerih se zacne del seznama za vsako "."
    }
    cout << "Omrezje: ";
    izpis_ip(ip[0], ip[1], ip[2], ip[3], maska);

    int neki = (pow(2,(max-maska-1))-2)/3;

    //int a = rand()%(neki+1);
    //int b = rand()%(neki+1);
    //int c = rand()%(neki+1);
    int a, b, c;
    cout << "Naprave a: ";
    cin >> a;
    cout << "Naprave b: ";
    cin >> b;
    cout << "Naprave c: ";
    cin >> c; 

    int stevilke[3] = {a, b, c};

    cout << endl << "Stevilo naprav:\n";
    cout << "A: " << a << "\n";
    cout << "B: " << b << "\n";
    cout << "C: " << c << "\n\n";


    for(int i=0; i<3; i++){
        if(i == 0){
            cout << "Omrezje A: ";
        }
        else if(i == 1){
            cout << "Omrezje B: ";
        }
        else{
            cout << "Omrezje C: ";
        }
        if(stevilke[i] != 0){
        for(int i = 1; i<4; i++){
            ip[i] = izracunaj(i8-8);  //mesta na katerih se zacne del seznama za vsako "."
        }
        int maska_x = max - eksponent(stevilke[i]);
        izpis_ip(ip[0], ip[1], ip[2], ip[3], maska_x);

        pristej(eksponent(stevilke[i]));
        }
    }

    return 0;
}
ZA VPISAT
OPRIN10 — 01/16/2024 12:00 AM
#include<iostream>
#include<time.h>
#include<cmath>

using namespace std;

struct El {
    int x;
    struct El *next, *prev;
} *start = nullptr, *end1 = nullptr;

void Push(int tmp1){    //IP binarno v seznam
    struct El* tmp = new struct El;
    tmp -> x  = tmp1;
    if(start == nullptr){
        start = tmp;
        end1 = tmp;
        start -> next = nullptr;
        start -> prev = nullptr;
    }
    else{
        end1->next = tmp;
        tmp -> prev = end1; 
        end1 = tmp;
        end1 -> next = nullptr;
    } 
}

int izracunaj(int zacetek){ // pretvorba v decimalno
    struct El *tmp = start;
    while(zacetek!=0){
        tmp = tmp -> next;
        zacetek--;
    }
    int count = 7;
    int sestevek = 0;
    while(count >= 0){
        sestevek+=(pow(2,count)*tmp->x);
        tmp = tmp -> next;
        count--;
    }
    return sestevek;
}

void izpis_ip(int a, int b, int c, int d, int maska){ //izpis IP
    cout << a << "." << b << "." << c << "." << d << "/"<< maska << "\n";   
}

int eksponent(int n){   //izracun eksponent
    int i = 1;
    while((pow(2,i)-2)<n){
        i++;
    }
    return i;
}

void pristej(int n){
    struct El *tmp = end1;
    int count = 1;
    
    while(count <= n){
        tmp = tmp -> prev;
        count++;
    }
    if(tmp->x == 0){
        tmp->x = 1;
    }
    else{
        tmp->x = 0;
        tmp = tmp -> prev;
        tmp->x = 1;
    }  
}

int main(){
    
    srand(time(NULL));
    const short max = 32;
    int maska;
    int ip[4];
    cin >> ip[0] >> ip[1] >> ip[2] >> ip[3];
    cout << "Maska: ";
    cin >> maska;
    int maska_counter = (maska-8);

    int eksponent1 = 7;
    for(int i = 1; i < 4; i++){
    eksponent1 = 7;
    while(eksponent1 >= 0){
        if(ip[i]>=(pow(2, eksponent1))){    //zapisemo ip[0],ip[1],ip[2] v binarno
            ip[i]-=pow(2, eksponent1);
            Push(1);
        }
        else{
            Push(0);
        }
        eksponent1--;
    }
    cout << endl;
    }
    for(int i = 1; i<4; i++){
        ip[i] = izracunaj(i*8-8);  //mesta na katerih se zacne del seznama za vsako "."
    }
    cout << "Omrezje: ";
    izpis_ip(ip[0], ip[1], ip[2], ip[3], maska);

    int neki = (pow(2,(max-maska-1))-2)/3;

    //int a = rand()%(neki+1);
    //int b = rand()%(neki+1);
    //int c = rand()%(neki+1);
    int a, b, c;
    cout << "Naprave a: ";
    cin >> a;
    cout << "Naprave b: ";
    cin >> b;
    cout << "Naprave c: ";
    cin >> c; 

    int stevilke[3] = {a, b, c};

    cout << endl << "Stevilo naprav:\n";
    cout << "A: " << a << "\n";
    cout << "B: " << b << "\n";
    cout << "C: " << c << "\n\n";


    for(int i=0; i<3; i++){
        if(i == 0){
            cout << "Omrezje A: ";
        }
        else if(i == 1){
            cout << "Omrezje B: ";
        }
        else{
            cout << "Omrezje C: ";
        }
        if(stevilke[i] != 0){
        for(int i = 1; i<4; i++){
            ip[i] = izracunaj(i*8-8);  //mesta na katerih se zacne del seznama za vsako "."
        }
        int maska_x = max - eksponent(stevilke[i]);
        izpis_ip(ip[0], ip[1], ip[2], ip[3], maska_x);

        pristej(eksponent(stevilke[i]));
        }
    }

    return 0;
}
OPRIN10 — 01/18/2024 6:07 PM
Image
OPRIN10 — 01/18/2024 8:11 PM
Image
https://looka.com/editor/167839930
OPRIN10 — 01/18/2024 8:20 PM
Image
Image
Image
Image
OPRIN10 — 01/18/2024 8:42 PM
Image
OPRIN10 — 02/29/2024 3:04 PM
Attachment file type: unknown
9.naloga.pkt
53.16 KB
OPRIN10 — 03/07/2024 7:02 PM
Pozdravljeni,
pošiljam vam še nekaj nalog, ki jih rešite pred petkovim ocenjevanjem.
Lep pozdrav
Matjaž Majnik
 
-------------------------------------
Napiši stavek SQL, ki…
…vstavi podatke o novi gostji, Danici Jeseničnik, z neznanim krajem bivanja in datumom rojstva; za kraj bivanja in datum rojstva v podatkovno bazo ne vnesite ničesar.

…pobriše podatke o vseh neaktualnih nastanitvah, in sicer nastanitvah z id. št. hotela 7232, 5478 in 2984, nastanitvah s ceno enako nič ter nastanitvah, zaključenih pred 25. junijem leta 1991.

…zniža ceno vseh nastanitev gosta št. 54832 v hotelih št. 672 ali 341, in sicer za 15 odstotkov.

… ustvari tabelo Soba z naslednjimi stolpci: St_hotela, St_sobe, Vrsta_sobe, Nadstropje, Pogled, Velikost, Razpolozljivost, Opombe. Določite karseda primerne podatkovne tipe, pozorni bodite tudi na velikost podatkovnega tipa (v bazo bomo vnašali podatke za slovenske hotele). Vnos v vse stolpce razen zadnjega je obvezen. Imamo sestavljen primarni ključ (St_hotela, St_sobe) ter tuji ključ (St_hotela).
OPRIN10 — 03/07/2024 8:30 PM
Image
Image
OPRIN10 — 03/19/2024 3:12 PM
Image
Image
Image
Image
Image
OPRIN10 — 03/25/2024 9:25 PM
https://app.hellosign.com/sign/5f5e572cd21e15071db24c8a11b0e90af5ff2e4e#/sign/component_894897445_9
OPRIN10 — 04/21/2024 11:39 PM
Image
OPRIN10 — 04/28/2024 5:20 PM
https://cad.onshape.com/signup/invite?id=afca2b4753b0c8508eacd13b
Onshape
Sign in to Onshape, the #1 fastest growing CAD system in the world with over 4 million users.
OPRIN10 — 04/28/2024 6:15 PM
https://mailserverguru.com/install-nextcloud-on-ubuntu-22-04-lts/
MailServerGuru
Install NextCloud On Ubuntu 22.04 LTS - Complete Guide - MailServer...
Nextcloud is a file hosting system that allows us to store our content like documents, pictures, videos, etc, and share it with others.
Install NextCloud On Ubuntu 22.04 LTS - Complete Guide - MailServer...
https://docs.moodle.org/403/en/Installing_Moodle_on_Debian_based_distributions
https://ubuntu.com/tutorials/install-and-configure-wordpress#2-install-dependencies
Installing Moodle on Debian based distributions
OPRIN10 — 05/07/2024 10:44 AM
OPRIN10 — Yesterday at 9:32 PM
Attachment file type: document
martin_A.docx
15.09 KB
OPRIN10 — Yesterday at 11:54 PM
cpp
#include <iostream>
#include <fstream>
#include <cstring>
#include <string>
#include <map>

using namespace std;


class Projekt{
    private:
        char izvajalec[21];
        char naziv[21];
        int st_mesecev;
        float cena;
    public:
        Projekt() : st_mesecev(0), cena(0){}
        char* vrniNaziv(){return naziv;}
        char* vrniIzvajalca(){return izvajalec;}
        float vrniCeno(){return cena;}
        float vrniMesec(){return st_mesecev;}
        void vpis();
        void vpisSortirano(Projekt &b);

        bool operator>(Projekt &b);
        float avgCena();
        Projekt operator+(int n);
        bool operator==(Projekt &b);
};


bool Projekt::operator==(Projekt &b){
    if((strcmp(naziv, b.naziv) == 0) and (strcmp(izvajalec, b.izvajalec) == 0))
        return true;
    return false;
}

Projekt Projekt::operator+(int n){
    st_mesecev = st_mesecev + n;
    cena = cena * 0.95;
    return *this;
}

float Projekt::avgCena(){
    return cena/st_mesecev;
}

bool Projekt::operator>(Projekt &b){
    if(strcmp(naziv, b.naziv) > 0)
        return true;
    return false;
}


void Projekt::vpisSortirano(Projekt &b){

    bool flag = false;
    ofstream datao("tmp.bin", ios::binary);
    ifstream datai("Projekti.bin", ios::binary);
    Projekt a;

    while(datai.read((char*)&a, sizeof(a))){
        if(a>b && !flag){
            datao.write((char*)&b, sizeof(b));
            flag = true;
        }
        datao.write((char*)&a, sizeof(a));
    }
    if(!flag){
        datao.write((char*)&b, sizeof(b));
    }
    datai.close();
    datao.close();
    remove("Projekti.bin");
    rename("tmp.bin", "Projekti.bin");
}

void Projekt::vpis(){

    Projekt a;
    cout << "Vnesi izvajalca: ";
    cin.getline(a.izvajalec, 21);
    cout << "Vnesi naziv: ";
    cin.getline(a.naziv, 21);
    cout << "Vnesi st_mesecev: ";
    cin >> a.st_mesecev;
    cout << "Vnesi ceno: ";
    cin >> a.cena;
    cin.ignore();
    vpisSortirano(a);
}

void maxMesec(){
    Projekt a, max;
    ifstream datai("Projekti.bin", ios::binary);
    while(datai.read((char *)&a, sizeof(a))){
        if(a.vrniMesec() > max.vrniMesec()){
            max = a;
        }
    }
... (124 lines left)
Collapse
message.txt
6 KB
```cpp
#include <iostream>
#include <fstream>
#include <string.h>
#include <cstring>
Expand
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
#include <iostream>
#include <fstream>
#include <cstring>
#include <string>
#include <map>

using namespace std;


class Projekt{
    private:
        char izvajalec[21];
        char naziv[21];
        int st_mesecev;
        float cena;
    public:
        Projekt() : st_mesecev(0), cena(0){}
        char* vrniNaziv(){return naziv;}
        char* vrniIzvajalca(){return izvajalec;}
        float vrniCeno(){return cena;}
        float vrniMesec(){return st_mesecev;}
        void vpis();
        void vpisSortirano(Projekt &b);

        bool operator>(Projekt &b);
        float avgCena();
        Projekt operator+(int n);
        bool operator==(Projekt &b);
};


bool Projekt::operator==(Projekt &b){
    if((strcmp(naziv, b.naziv) == 0) and (strcmp(izvajalec, b.izvajalec) == 0))
        return true;
    return false;
}

Projekt Projekt::operator+(int n){
    st_mesecev = st_mesecev + n;
    cena = cena * 0.95;
    return *this;
}

float Projekt::avgCena(){
    return cena/st_mesecev;
}

bool Projekt::operator>(Projekt &b){
    if(strcmp(naziv, b.naziv) > 0)
        return true;
    return false;
}


void Projekt::vpisSortirano(Projekt &b){

    bool flag = false;
    ofstream datao("tmp.bin", ios::binary);
    ifstream datai("Projekti.bin", ios::binary);
    Projekt a;

    while(datai.read((char*)&a, sizeof(a))){
        if(a>b && !flag){
            datao.write((char*)&b, sizeof(b));
            flag = true;
        }
        datao.write((char*)&a, sizeof(a));
    }
    if(!flag){
        datao.write((char*)&b, sizeof(b));
    }
    datai.close();
    datao.close();
    remove("Projekti.bin");
    rename("tmp.bin", "Projekti.bin");
}

void Projekt::vpis(){

    Projekt a;
    cout << "Vnesi izvajalca: ";
    cin.getline(a.izvajalec, 21);
    cout << "Vnesi naziv: ";
    cin.getline(a.naziv, 21);
    cout << "Vnesi st_mesecev: ";
    cin >> a.st_mesecev;
    cout << "Vnesi ceno: ";
    cin >> a.cena;
    cin.ignore();
    vpisSortirano(a);
}

void maxMesec(){
    Projekt a, max;
    ifstream datai("Projekti.bin", ios::binary);
    while(datai.read((char *)&a, sizeof(a))){
        if(a.vrniMesec() > max.vrniMesec()){
            max = a;
        }
    }
    max+5;
    datai.close();
    datai.open("Projekti.bin", ios::binary);
    ofstream datao("tmp.bin", ios::binary);
    while(datai.read((char *)&a, sizeof(a))){
        if(a == max){
            datao.write((char*)&max, sizeof(max));
        }else{
            datao.write((char*)&a, sizeof(a));
        }
    }
    datai.close();
    datao.close();
    remove("Projekti.bin");
    rename("tmp.bin", "Projekti.bin");
}

float izpisiAvg(){
    Projekt a;
    ifstream data("Projekti.bin", ios::binary);
    while(data.read((char*)&a, sizeof(a))){
        if(strcmp(a.vrniIzvajalca(), "izvajalec4") == 0)
            cout << a.avgCena() << endl;
    }
    return 1;
}

void vpisTxt(){
    ofstream datao("Izvajalec.txt", ios::app);
    cout << "Vnesi izvajalca: ";
    string izvajalec;
    cin >> izvajalec;
    datao << izvajalec << endl;
    datao.close();
}


void izpis(){
    ifstream data("Projekti.bin", ios::binary);
    Projekt a;
    while(data.read((char*)&a, sizeof(a))){
        cout << a.vrniIzvajalca() << " " << a.vrniNaziv() << " " << a.vrniCeno()<< " " << a.vrniMesec() << endl;
    }
    data.close();
}

void brisanje(){
    Projekt a;
    ifstream datai("Projekti.bin", ios::binary);
    ofstream datao("tmp.bin", ios::binary);
    ifstream datai2;
        char izvajalec[21];
    while(datai.read((char*)&a, sizeof(a))){
        datai2.open("Izvajalec.txt");
        while(datai2 >> izvajalec){
            //cout << izvajalec << endl;
            if(strcmp(a.vrniIzvajalca(), izvajalec)==0){
                //cout << "Izvajalec najden: " << a.vrniIzvajalca() << endl;
                cout << a.vrniIzvajalca() << " " << a.vrniNaziv() << " " << a.vrniCeno()<< " " << a.vrniMesec() << endl;
                datao.write((char*)&a, sizeof(a));
            }
        }
        datai2.close();
        datao.close();
        datai.close();
        remove("Projekti.bin");
        rename("tmp.bin", "Projekti.bin");
    }
}

void maxIzvajalec(){
    ifstream datai;
    ifstream datai2;
    datai.open("Projekti.bin", ios::binary);
    datai2.open("Izvajalec.txt");
    char izvajalec[21];
    int maxCount = 0;
    char maxIzvajalec[21];
    map<string, int> coutnter;
    while(datai2 >> izvajalec){
        coutnter[izvajalec]++;
        if(coutnter[izvajalec] > maxCount){
            maxCount = coutnter[izvajalec];
            strcpy(maxIzvajalec,izvajalec);
        } 
    }
    Projekt a;
    int count = 0;
    while(datai.read((char*)&a, sizeof(Projekt))){
        if(strcmp(a.vrniIzvajalca(), maxIzvajalec) == 0){
            count++;
        }
    }
    if(count == 0){
            cout << "Nima izvajalca" << endl;
            ofstream datao("Izvajalec.txt", ios::app);
            datao << "izvajalca ni" << endl;
            datao.close();
    }
    //cout << maxIzvajalec << " " << maxCount << endl;
    datai.close();
    datai2.close();

}

int main(){

    for(int i = 0; i < 2; i++){
        Projekt a;  
        //a.vpis();
    }

    //izpis();
    //maxMesec();
    //izpis();
    //cout << endl;
    //izpisiAvg();
    //vpisTxt();
    //brisanje();
    izpis();
    maxIzvajalec();

    return 0;
}
