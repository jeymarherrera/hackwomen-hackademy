//buscar primer coincidencia de manera manual
const numbers = [10, 12, 21, 33, 14, 35, 56, 77, 88, 99];
console.log('Before');
console.log(numbers);

//1. walk througth the array
//2. compare if the element match with the value
//3. if the element match save th result and break the loop
//4. if the value is not in the array return -1

const valueToFind = 33;
let result = -1

for (let i = 0; i <= numbers.length; i++){
    if(numbers[i] === valueToFind){
        result = 1;
        break;
    }
}

console.log(`value ${valueToFind} is on index ${result}`)