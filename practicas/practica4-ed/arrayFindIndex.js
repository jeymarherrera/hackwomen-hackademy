//buscar primer coincidencia
const numbers = [10, 12, 21, 33, 14, 35, 56, 77, 88, 99];
console.log('Before');
console.log(numbers);

const valueToFind = 33;

const result = numbers.findIndex(element => element === valueToFind)

console.log(`value ${valueToFind} is on index ${result}`)