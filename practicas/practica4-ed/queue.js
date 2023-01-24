//colas
class Node {
    constructor(element){
        this.element = element;
        this.next = null;
    }
}

class Queue {
    constructor(){
        this.back = null;
        this.front = null;
        this.size = 0;
    }

    enqueue(element){
        const node = new Node(element);

        if(this.isEmpty()){
            this.back = node;
            this.front = node;
        }else{
            node.next = this.back;
            this.back = node;
        }
        this.size++;
    }

    dequeue() {
        if(this.isEmpty()){
            return
        }

        const frontNode = this.front;
        let currentNode = currentNode.back;

        while(currentNode.next && currentNode.next !== frontNode){
            currentNode = currentNode.next;
        }

        this.front = currentNode;
        this.front.next = null;
        this.size--;

        return frontNode.element;
    }

    //validar cola vacia
    isEmpty(){
        return this.size === 0;
    }

    //imprimir cola
    printQueue(){
        let currentNode = this.back;
        while(currentNode){
            console.log(currentNode.element);
            currentNode = currentNode.next;
        }
    }
}

//funcion que genera numeros binarios
function findBin(n){
    let result = [];
    let queue = new Queue;
    let s1;
    let s2;

    queue.enqueue('1');

    for(let i=0; i<n; i++){
        result.push(queue.dequeue())
        s1 = result[i] + '0';
        s2 = result[i] + '1';

        queue.enqueue(s1);
        queue.enqueue(s2);
    }
    return result;
}
console.log(findBin(5));

const queue = new  Queue;
quieue.enqueue('Juan');
queue.enqueue('Pedro');
quieue.enqueue('Jose');
queue.enqueue('Armando');
queue.enqueue('Fernando');

queue.printQueue();

let front = queue.dequeue();
console.log(front);

front = queue.dequeue();
console.log(front);
//console.log(queue);