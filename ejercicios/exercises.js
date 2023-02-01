//ejercicio 1
function addition(a, b) {
	return a+b;
}

console.log(addition(3,2));

//ejercicio 2
function calcAge(age) {
	return age*365;
}

console.log(calcAge(65));

//ejercicio 3
function points(twoPointers, threePointers) {
	return (twoPointers*2 + threePointers*3);
}

console.log(points(1,1));

//ejercicio 4
function nextEdge(side1, side2) {
	return (side1 + side2)-1;
}

console.log(nextEdge(5,7));

//ejercicio 5
function and(a, b) {
   if (a === true && b === true){
      return true;
   }
   else {
      return false;
   }
}

console.log(and(false, true));

//ejercicio 6
function isSymmetrical(num) {
   return ""+num === (""+num).split("").reverse().join("")
}

console.log(isSymmetrical(44444444));

//ejercicio 7
function sumOfCubes(nums) {
  let suma=0;
  for(let i = 0; i<nums.length; i++){
      suma = suma + (nums[i]*nums[i]*nums[i]);
  }
    return suma;
}

console.log(sumOfCubes([3, 4, 5]));

//ejercicio 8
function canNest(arr1, arr2) {
    let mayor1, mayor2, menor1, menor2;
    
    for(let i = 0; i<arr1.length; i++){
       if (i == 0){
         mayor1 = arr1[i];
         menor1 = arr1[i];
       }
       else if (arr1[i]>mayor1){
         mayor1 = arr1[i];
       }
       else if (arr1[i]<menor1){
         menor1 = arr1[i];
       }
    }
    
    for(let i = 0; i<arr2.length; i++){
       if (i == 0){
         mayor2 = arr2[i];
         menor2 = arr2[i];
       }
       else if (arr2[i]>mayor2){
         mayor2 = arr2[i];
       }
       else if (arr2[i]<menor2){
         menor2 = arr2[i];
       }
    }
    
    if (menor1 > menor2 && mayor1 < mayor2){
        return true;
    }else{
        return false;
    }
  }
  
  console.log(canNest([1, 2, 3, 4], [0, 6]));
  console.log(canNest([3, 1], [4, 0]));
  console.log(canNest([9, 9, 8], [8, 9]));
  console.log(canNest([1, 2, 3, 4], [2, 3]));

  //ejercicio 9
  function factorial(n) {
    let factorial = 1;
    
    while(n != 0){
      factorial = factorial * n;
      n = n - 1;
    }
    return factorial;
  }
  
console.log(factorial(5));
console.log(factorial(3));
console.log(factorial(1));
console.log(factorial(0));

//ejercicio 10
function sortDescending(num) {
    return parseInt(num.toString().split('').sort().reverse().join(''));
}

//toString() convierte en una cadena 
//split('') para convertir la cadena en un array de caracteres
//sort() ordenar el array en orden ascendente
//reverse() invertir el orden obteniendo el orden descendente
//join('') unir los elementos del array
//parseInt() se convierte de nuevo a entero
  
console.log(sortDescending(123));
console.log(sortDescending(1254859723));
console.log(sortDescending(73065));
  
//ejercicio 11
function totalVolume(...boxes) {
    let total = 0;
    for (let i = 0; i < boxes.length; i++) {
        let volumen = boxes[i][0] * boxes[i][1] * boxes[i][2];
        total += volumen;
    }
    return total;
}

console.log(totalVolume([4, 2, 4], [3, 3, 3], [1, 1, 2], [2, 1, 1])); 
console.log(totalVolume([2, 2, 2], [2, 1, 1])); 
console.log(totalVolume([1, 1, 1])); 

//ejercicio 12
function isTriplet(n1, n2, n3) {
	let numbers = [n1, n2, n3];
    numbers.sort(function(a, b){return a-b});
    if (Math.pow(numbers[0], 2) + Math.pow(numbers[1], 2) === Math.pow(numbers[2], 2)) {
        return true;
    } else {
        return false;
    }
}

console.log(isTriplet(3, 4, 5));
console.log(isTriplet(13, 5, 12));
console.log(isTriplet(1, 2, 3));

//ejercicio 13
function calculator(num1, operator, num2) {
    if (operator === "+") {
        return num1 + num2;
    } else if (operator === "-") {
        return num1 - num2;
    } else if (operator === "*") {
        return num1 * num2;
    } else if (operator === "/") {
        if (num2 === 0) {
            return "Can't divide by 0!";
        } else {
            return num1 / num2;
        }
    } else {
        return "Operador Invalido!";
    }
}

console.log(calculator(2, "+", 2));
console.log(calculator(2, "*", 2));
console.log(calculator(4, "/", 0));

//ejercicio 14
function getBudgets(arr) {
    var budget = 0;
      for(var i=0; i<arr.length; i++){
          budget = budget + arr[i].budget;
      }
    return budget;
  }
  
  console.log(getBudgets([
      { name: "Juan", age: 21, budget: 23000 },
      { name: "Steve", age: 32, budget: 40000 },
      { name: "Martin", age: 16, budget: 2700 }
  ]));

  console.log(getBudgets([
    { name: "Juan", age: 21, budget: 29000 },
    { name: "Steve", age: 32, budget: 32000 },
    { name: "Martin", age: 16, budget: 1600 }
]));

//ejercicio 15
function countBoomerangs(arr) {
	let contador = 0;
    for (let i = 0; i < arr.length - 2; i++) {
        if (arr[i] === arr[i+2] && arr[i] !== arr[i+1]) {
            contador++;
        }
    }
    return contador;
}

console.log(countBoomerangs([9, 5, 9, 5, 1, 1, 1]));
console.log(countBoomerangs([5, 6, 6, 7, 6, 3, 9]));
console.log(countBoomerangs([4, 4, 4, 9, 9, 9, 9]));
