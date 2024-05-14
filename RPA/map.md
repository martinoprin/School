```cpp
#include <map>

map<key, value> ime_map;
    cout << it->first;
    cout << (*it).first;

map<int,int> Slovar;
Slovar[5] = 3;
Slovar[54] = 7;

for(mpa<int>::iterator it=slovar){
    cout << *it;
    cout << it->first << it->second;
}

```

```cpp
    for(auto i : Count){
        cout << i.first << i.second << endl;
        strcpy(p.ime_pokrajine, i.first.c_str());
        p.st = i.second;
        datao.write((char*)&p, sizeof(p));
    }


    for(auto i = Count.begin(); i != Count.end(); ++i){
        cout << i->first << i->second << endl;
        strcpy(p.ime_pokrajine, i->first.c_str());
        p.st = i->second;
        datao.write((char*)&p, sizeof(p));
    }
```
c_str() - castanje iz string v char[]
