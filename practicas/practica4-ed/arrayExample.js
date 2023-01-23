//en JS el array es dinamico
const numbers = [10,12,21,33,14,35,56,77,88,99]
const arrSize = numbers.length
console.log(`The size of the array is ${arrSize}`)

console.log(numbers[0])
console.log(numbers[9])
console.log(numbers[99])

numbers[0] = 101
numbers[11] = 101

console.log(numbers)

console.log("Recorriendo arreglo")
for(let i = 0; i < arrSize; i++){
    console.log(numbers[i])
}