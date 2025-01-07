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

```cpp
// C++ std::map Cheat Sheet

// 1. Creating a map
std::map<int, std::string> myMap;

// 2. Inserting elements
myMap.insert(std::make_pair(1, "Apple"));
myMap[2] = "Banana";

// 3. Accessing elements
std::string fruit = myMap[1]; // fruit now contains "Apple"

// 4. Checking if a key exists
if (myMap.count(1)) {
    // Key 1 exists in the map
}

// 5. Iterating over a map
for (const auto& pair : myMap) {
    std::cout << pair.first << ": " << pair.second << std::endl;
}

// 6. Finding an element
auto it = myMap.find(1);
if (it != myMap.end()) {
    // Element found
    std::cout << it->first << ": " << it->second << std::endl;
}

// 7. Removing an element
myMap.erase(1); // Removes the element with key 1

// 8. Getting the size of the map
size_t size = myMap.size();

// 9. Checking if the map is empty
if (myMap.empty()) {
    // The map is empty
}

// 10. Clearing the map
myMap.clear();
```
