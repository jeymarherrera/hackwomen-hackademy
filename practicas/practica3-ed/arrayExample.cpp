// Basci Array Example
//To compile g++ arrayExample.cpp -o arrayExample

#include <iostream>
int main (int argv, char **argc){
    int numbers[10] = {10,12,21,33,14,15,56,77,88,99};

    int arrSize = sizeof(numbers)/sizeof(numbers[0]);
    std::cout << "The size of the array is: " << arrSize << std::endl;

    numbers[9] = 25;

    std::cout << numbers[0] << std::endl;
    std::cout << numbers[9] << std::endl;

     std::cout << "Recorriendo el arreglo " << std::endl;
     for (int i = 0; i < arrSize; i++){
         std::cout << numbers[i] << std::endl;
     }

    return 0;
}