// Write a program to print the sum of two numbers.

// Include the standard C++ header file iostream
#include <iostream>

// The main function to print the sum of two numbers
int main()
{
    // Declare two variables
    int a, b;

    // Read the values of a and b
    std::cout << "Enter the value of a: ";
    std::cin >> a;
    std::cout << "Enter the value of b: ";
    std::cin >> b;

    // Print the sum of a and b
    std::cout << "The sum of a and b is " << a + b << std::endl;
    return 0;
}