* vectorname.push_back(value);

*vectorname.pop_back(value);

*sort(vectorname.begin(),vectorname.end());

*vectorname.clear();

*vectorname.erase(vectorname.begin()+index);

*sort(vectorname.begin(),vectorname.end(),greater<int>());

*sort(vectorname.rbegin(),vectorname.rend());

*vectorname.size();

*vectorname.front();

*vectorname.back();

*vectorname.empty();

*vectorname.at();
In C++, vector at() is a built-in method used to access an element in a vector using index. It is the only access method that performs bound checking before accessing the element to confirm whether the given index lies is within the vector.

*vectorname.insert(vectorname.begin()+index,value);

*vectorname.capacity();

*vectorname.begin();
//returns the address of 0th element of vector

*vectorname.end();
//returns the address of v.size()+1 th element of vector

*binary_search(vectorname.begin(),vectorname.end(),SerchingValue);
return 1 if key is found and return 0 if key is not found.

find(vectorname.begin(),vectorname.end(),SearchedValue);
return pointer of searched value.
