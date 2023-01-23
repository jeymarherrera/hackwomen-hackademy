//eliminar elemento de un arreglo de manera manual
const numbers = [10, 12, 21, 33, 14, 35, 56, 77, 88, 99];
console.log('Before');
console.log(numbers);
//1. set null the index to remove (optional)
//. shift each element until the null position
//3. remove the leftover element at the end of the array
const indexToDelete = 2;

//numbers[indexToDelete] = null;

for(let i = indexToDelete; i < numbers.length; i++){
    numbers[i] = numbers[i+1]
}

numbers.pop();

console.log('After');
console.log(numbers);