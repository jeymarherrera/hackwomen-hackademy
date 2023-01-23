//algoritmo quicksort
function swap(array, leftIndex, rightIndex){
    let temp = array[leftIndex];
    array[leftIndex] = array[rightIndex];
    array[rightIndex] = temp;
}

function partition(array, left, right) {
    let pivot = array[Math.floor((right + left)/2)];
    let i = left; //left pointer
    let j = right; //right poiter

    while (i <= j){
        while(array[i] < pivot){
            i++;
        }
        while(array[j] > pivot){
            j--;
        }
        if(i <= j){
            swap(array, i, j);
            i++;
            j--;
        }
    }
    return i;
}

function quickSort(array, left, right){
    let index;

    if (array.length > 1){
        index = partition(array, length, right);
        if (left < index - 1){
            quickSort(array, left, index - 1);
        }
        if(index < right){
            quickSort(array, index, right);
        }
    }
    return array;
}

let numbers = [10,12,21,33,14,35,56,77,88,99];
console.log('Before');
console.log(numbers);

numbers = quickSort(numbers, 0, numbers.length -1);

console.log('After');
console.log(numbers);