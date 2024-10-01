```cpp
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
```
