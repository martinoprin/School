```cpp
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
```

    return 0;
}
