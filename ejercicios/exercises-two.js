//ejercicio 1 - eliminar duplicados de una matriz
function removeDups(arr) {
    //Array.from crea un nuevo array apartir de un objeto Set
    // Un objeto Set en JavaScript almacena valores únicos, por lo que al convertir la matriz en un Set, se eliminan automáticamente los duplicados. 
    //Luego, se convierte el Set de nuevo en un array y se devuelve.
	return Array.from(new Set(arr));
}

console.log(removeDups([1, 0, 1, 0]));
console.log(removeDups(["El", "grande", "gato"]));
console.log(removeDups(["Juan", "Taylor", "Juan"]));

//ejercicio 2 - conversion de temperatura
function tempConversion(celsius) {
    if (celsius < -273.15) {
      return "Invalid";
    }
    let F = celsius * 9/5 + 32;
    let K = celsius + 273.15;
    return [F.toFixed(2), K.toFixed(2)];
  }
  
  console.log(tempConversion(0));
  console.log(tempConversion(100));
  console.log(tempConversion(-10));
  console.log(tempConversion(300.4));

//ejercicio 3 - jazz instantaneo
function jazzify(arr) {
	return arr.map(acorde => {
    if (acorde[acorde.length - 1] === "7") {
      return acorde;
    } else {
      return acorde + "7";
    }
  });
}

console.log(jazzify(["G", "F", "C"]));
console.log(jazzify(["Dm", "G", "E", "A"]));
console.log(jazzify(["F7", "E7", "A7", "Ab7", "Gm7", "C7"]));
console.log(jazzify([]));

//ejercicio 4 - total maximo posible
function maxTotal(nums) {
    nums.sort((a, b) => b - a);
    return nums.slice(0, 5).reduce((sum, value) => sum + value, 0);
  }
  
  console.log(maxTotal([1, 1, 0, 1, 3, 10, 10, 10, 10, 1]));
  console.log(maxTotal([0, 0, 0, 0, 0, 0, 0, 0, 0, 100]));
  console.log(maxTotal([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));

//ejercicio 5 - encuentra el numero mas grande
function findLargestNums(arr) {
    return arr.map(subArray => Math.max(...subArray));
   }
   
   console.log(findLargestNums([[4, 2, 7, 1], [20, 70, 40, 90], [1, 2, 0]]));
   console.log(findLargestNums([[-34, -54, -74], [-32, -2, -65], [-54, 7, -43]]));
   console.log(findLargestNums([[0.4321, 0.7634, 0.652], [1.324, 9.32, 2.5423, 6.4314], [9, 3, 6, 3]]));

//ejercicio 6 - cadena de factores
function factorChain(arr) {
    for (let i = 1; i < arr.length; i++) {
      if (arr[i] % arr[i - 1] !== 0) {
        return false;
      }
    }
    return true;
  }
  
  console.log(factorChain([1, 2, 4, 8, 16, 32]));
  console.log(factorChain([1, 1, 1, 1, 1, 1]));
  console.log(factorChain([2, 4, 6, 7, 12]));
  console.log(factorChain([10, 1]));
  
//ejercicio 7 - contar los solitarios
function countLoneOnes(n) {
    let str = n.toString();
    let count = 0;
    for (let i = 0; i < str.length; i++) {
      if (str[i] === "1") {
        if (str[i-1] !== "1" && str[i+1] !== "1") {
          count++;
        }
      }
    }
    return count;
  }
  
  console.log(countLoneOnes(101));
  console.log(countLoneOnes(1191));
  console.log(countLoneOnes(1111));
  console.log(countLoneOnes(462));

//ejercicio 8 - Tarjetas de intercambio
function swapCards(n1, n2) {
    let paulMin = Math.min(n1 % 10, Math.floor(n1 / 10));
    let opponentMax = Math.max(n2 % 10, Math.floor(n2 / 10));
      if (paulMin < opponentMax){
        return true;
      } else{
          return false;
      }
  }
  
  console.log(swapCards(41, 98));
  console.log(swapCards(12, 28));
  console.log(swapCards(67, 53));
  console.log(swapCards(77, 54));


  //segunda forma
  function swapCards(n1, n2) {  
    var newNum1 = 0;
    var newNum2 = 0;
  
    let num1digits = n1.toString().split("")
    let num2digits = n2.toString().split("")
    
    let number1 = num1digits[0]
    let number2 = num2digits[0]
    let number3 = num1digits[1]
    let number4 = num2digits[1]
    
  
    if (number1 === number3) {
      newNum1 = number3 + number4;
    newNum2 = number1 + number2;
    console.log(newNum1)
    console.log(newNum2)
    } else{
      newNum1 = number1 + number2;
      newNum2 = number3 + number4;
    console.log(newNum1)
    console.log(newNum2)
    }  
    
    
   if (newNum1 > newNum2) {
      return true;
    } else {
      return false;
    }
   
  }
    
    console.log(swapCards(41, 79));

    //prueba 3
    function swapCards(n1, n2) {  
      var newNum1 = 0;
      var newNum2 = 0;
      
      let paulMin = Math.min(n1 % 10, Math.floor(n1 / 10));
      let paulMax = Math.max(n1 % 10, Math.floor(n1 / 10));
      let opponentMin = Math.min(n2 % 10, Math.floor(n2 / 10));
      let opponentMax = Math.max(n2 % 10, Math.floor(n2 / 10));
      
      let num1digits = n1.toString().split("")
      let num2digits = n2.toString().split("")
      
      let number1 = num1digits[0]
      let number2 = num2digits[0]
      let number3 = num1digits[1]
      let number4 = num2digits[1]
      
    
      if (paulMin === paulMax) {
        newNum1 = number3 + number4;
      newNum2 = number1 + number2;
      console.log(newNum1)
      console.log(newNum2)
      } else {
        newNum1 = parseInt(paulMax.toString() + opponentMin.toString());
        newNum2 = parseInt(paulMin.toString() + opponentMax.toString());
      parseInt(newNum1)
      parseInt(newNum2)
      }  
      
     if (newNum1 > newNum2) {
        return true;
      } else {
        return false;
      }
     
    }
      
      console.log(swapCards(41, 79));