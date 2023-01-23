//eliminar elemento de un arreglo
const numbers = [10, 12, 21, 33, 14, 35, 56, 77, 88, 99];
console.log('Before');
console.log(numbers);

//delete element in index 2
const indexToDelete = 2;
const numberOfElementsToDelete = 1
numbers.splice(indexToDelete, numberOfElementsToDelete)

console.log('After');
console.log(numbers);