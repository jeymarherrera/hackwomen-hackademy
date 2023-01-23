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

        if(this.size === 0 ){
            this.back = node;
            this.front = node;
        }else{
            node.next = this.back;
            this.back = node;
        }
        this.size++;
    }
}

const queue = new  Queue;
quieue.enqueue('Juan');
queue.enqueue('Pedro');

console.log(queue);