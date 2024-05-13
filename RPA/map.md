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
