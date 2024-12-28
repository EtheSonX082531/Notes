0.to_string(variable name of int,float,char);
It is used to convert a int,float or char into strings in C++.

1.sqrt(input);
Helps to find out the square root of given number.

2.cbrt(input);
Helps to find out the cube root of given number.

3.min(value1,value2);
Helps to find out the minimum value between two input numbers.

4.max(value1,value2);
Helps to find out the maximum value between two input numbers.

5.pow(number,power);
Helps to find out the power. 

6.swap(1st variable,2nd variable);
Helps to swap the valus of two variable.

7.cin.ignore();

8.stoi();
One effective way to convert a string object into a numeral int is to use the stoi() function. This method is commonly used for newer versions of C++, with is being introduced with C++11. It takes as input a string value and returns as output the integer version of it.

9.typeid(s).name():

The typeid() operator is used to get the type information of the variable s.

.name() returns a string representation of the type.



10.cin.getline(str,len,delim?)
Here,
str=Character Array Name
len=Character Array Length
delim?=Delimiter,a character input terminator

11.str.length()
It return the length of the string

12.getline(cin,str,delim?);
Or, getline(cin,str);
Here,
Delimiter is default(blank space or enter)

13.reverse(str.begin(),str.end());
Helps to reverse a string.

14.The tolower(character) function in C++ converts a given character to lowercase. It is defined in the cctype header file.

15.continue

#include<iostream>
using namespace std;

int main()
{
    for(int i=0; i<=30; i++) {
        if(i%3==0) {
            continue;
            //We will go to the next iteration 
            //without doing the below task
        }
        cout<<i<<endl;
    }
    return 0;
}

16.str.find(substring)

In C++, string.find() is a library function used to find the first occurrence of a sub-string in the given string. Let’s take a look at a simple example that shows the how to use this function.

17.str.erase()

The std::string::erase() function is a built-in function of std::string class that is used to erase the whole or a part of the string shortening its length. In this article, we will learn how to use string::erase() function.

Syntax

The std::string::erase() function provides 6 different overloads for different purposes:

s.erase() // Erases whole string
s.erase(idx) // Erases all characters after idx
s.erase(idx, k) // Erases k characters after idx
s.erase(itr) // Erases character at itr
s.erase(first, last) // Erases character in range [first, last)

