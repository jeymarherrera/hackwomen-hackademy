//algoritmo Bubble Sort
/*
1. posicionarse en el primer elemento del arreglo
2. comparar el elemento actual con el siguiente
3. si el numero siguiente es mas pequeno el numero actual hacer swap
4. moverse al siguiente numero y tomarlo como el elemento actual
5. repetir desde el paso 2 hasta alcanzar el ultimo numero 
6. si se llego al final repetir desde el paso 1
7. si se alcanzo el final del arreglo sin realizar swaps entonces el algoritmo puede parar*/

function bubbleSort(array){
    let noSwaps = true;

    for(let i=0; i<array.length; i++){
        noSwaps = false;
        for(let j=0; j<array.length; j++){
            if(array[j] > array[j+1]){
                noSwaps = true;
                let temporal = array[j];
                array[j] = array[j+1];
                array[j+1] = temporal;
            }
        }

        if(!noSwaps)
          break
    }
    return array;
}

let numbers = [10, 12, 21, 33, 14, 35, 56, 77, 99, 88];
console.log('Before');
console.log(numbers);

numbers = bubbleSort(numbers);

console.log('After');
console.log(numbers);