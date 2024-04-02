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

<h2>IZPIS</h2>
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

Napolnemo datoteko z ""
```cpp
void izprazni_datoteko(const char filename[]){
    ofstream datao(filename);
    datao << "";
    datao.close();
}
```
