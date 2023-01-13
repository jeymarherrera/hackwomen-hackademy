const numbers = [10,12,21,33,14,35,56,77,88,99]
console.log('Before')
console.log(numbers)

//Insert number 50 in index 2
const indexToInsert = 2
const valueToInsert = 50
numbers.splice(indexToInsert, 0, valueToInsert)

const lastIndex = numbers.length - 1
console.log("Recorriendo arreglo")
for(let i = lastIndex; i >= indexToInsert; i--){
   numbers[i+1] = numbers[i]
}

numbers[indexToInsert] = valueToInsert
console.log('After')
console.log(numbers)
