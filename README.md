Prime Factorization (TDD Approach)

#Overview

This project implements a function for prime factorization using Test-Driven Development (TDD).
The function is designed to return a collection of prime factors of a given number. The project includes a Makefile for building and running tests, but it does not contain a main() function.

std::vector<int> primeFactorize(int n);

The function must return a collection of integers which contains the prime factors of the given number. 
For example, the prime factors of 125 are 5, 5 and 5. The prime factors of 60 are 2, 2, 3 and 5.

std::vector<int> is a dynamic collection of integers which can be filled in using push_back() method using the following code snippet

std::vector<int> result;
result.push_back(value);

The project should not have a main() function. The code should be on GitHub.

Try to cover the function code with tests as good as possible using test-driven development (TDD) approach.

#program 
Write a program which will explore and analyze the function call stack and detect the function return addresses.

Hints: 
1. Use pointers to local variables and pointer arithmetics to move back and forth on the stack. 
2. Use char* f_ptr = (char*)&f;  to get the pointer to the f().
3. Use printf("%p ", (0xFF & *(ptr-i))); to get the least significant byte of the value pointed by (ptr-i).
4. Do not modify any values to avoid unnecessary errors.
5. Print as many values as necessary to "see" the structure of the stack and tha values stored there.



