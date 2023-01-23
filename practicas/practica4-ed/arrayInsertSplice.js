//insertar elemento en un arreglo
const numbers = [10,12,21,33,14,35,56,77,88,99]
console.log('Before')
console.log(numbers)

//Insert number 50 in index 2
const indexToInsert = 2
const valueToInsert = 50
numbers.splice(indexToInsert, 0, valueToInsert)

console.log('After')
console.log(numbers)

