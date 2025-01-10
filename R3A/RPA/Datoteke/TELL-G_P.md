```cpp

data.seekp(sizeof(a),ios::beg); //loh das i*sizeof(a)

data.seekg(2*sizeof(a), ios::beg);
data.seekp(2*sizeof(a), ios::beg);

file.seekg(position); // Absolute position
file.seekg(offset, ios::beg); // Offset from the beginning
file.seekg(offset, ios::cur); // Offset from the current position
file.seekg(offset, ios::end); // Offset from the end

file.seekp(position); // Absolute position
file.seekp(offset, ios::beg); // Offset from the beginning
file.seekp(offset, ios::cur); // Offset from the current position
file.seekp(offset, ios::end); // Offset from the end

streampos gpos = file.tellg(); // Get position
streampos ppos = file.tellp(); // Put position

```
