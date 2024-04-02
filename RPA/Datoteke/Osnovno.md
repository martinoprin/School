<h1>DATOTEKE</h1>

```cpp
#include <fstream>
```
Append doda na konec\
datao.is_open() - ce je odprto vrne 1, drugace pa 0
```cpp
void zapisi_v_datoteko(const char filename[], const char text[]){
    ofstream datao(filename, ios::app); 
    datao << text << endl;
    datao.close();
    //if(datao.is_open())
}
```

<h2>IZPIS</h2><p>
Vsaka vrstica posebej

```cpp
void izpisi_vrstice(const char filename[]){
    ifstream datai(filename);
    string s;
    while(getline(datai, s))
        cout << s << "\t";

    datai.close();
}
```
Vsaka beseda posebej
```cpp
void izpisi_besede(const char filename[]){
    ifstream datai(filename);
    string s;
    while(datai >> s)
        cout << s << endl;
    
    datai.close();
}
```
Izpisi znake
```cpp
void izpisi_znake(const char filename[]){
    ifstream datai(filename);
    char c;
    while(datai >> c) 
        cout << c;
    
    datai.close();
    //Izpise se vse skupaj brez presledkov - while(data >> noskipws >> c)
}
```

Napolnemo datoteko z ""
```cpp
void izprazni_datoteko(const char filename[]){
    ofstream datao(filename);
    datao << "";
    datao.close();
}
```
BESEDE Z SAMOGLASNIKI
```cpp
#include<fstream>
#include<iostream>
#include<string>

using namespace std;

void vpis(const char filename[], string text){
    ofstream datao(filename, ios::app);
    datao << text << endl;
    datao.close();
}

int main(){

    for(int i = 0; i<3; i++){

    string c;
    //getline(cin, c);
    //vpis("datotekaneki.txt", c);
    }

    ifstream datai("datotekaneki.txt");
    string s;
    while(datai >> s)
        switch (s[0]){
        case 'a':
        case 'e':
        case 'i':
        case 'o':
        case 'u':
        cout << s << endl;

        }
    return 0;
}
```
