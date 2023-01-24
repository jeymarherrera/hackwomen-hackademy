//creacion de una lista enlazada
class Node {
    constructor(element){
        this.element = element;
        this.next = null;
    }
}

class LinkedList {
    constructor(){
        this.head = null;
        this.size = 0
    }

    // - si la lista no etsa vacia debemos avanzar nodo por nodo hasta que lleguemos al ultimo nodo de la lista, el cual 
    // apunta a nulo, una vez alcanzado este punto apuntaremos al ultimo nodo existente con el nuevo nodo y finalmente 
    // incrementaremos el contador de nodos de la lista 
    add(element){
        const node = new Node(element)
        let currentNode;
    
        if(this.head == null){
            this.head = node
        }else{
            currentNode = this.head;
    
            while(currentNode.next){
                currentNode = currentNode.next;
            }
            currentNode.next = node;
        }
        this.size++;
    }

    insertAt(element, position){
        if(position < 0 || position > this.size){
            return
        }

        const node = new Node(element);
        let currentNode;
        let previousNode;

        currentNode = this.head;

        if(position === 0){
            node.next = this.head;
            this.head = node;
        } else {
            let iterator = 0;

            while(iterator < position){
                iterator++;
                previousNode = currentNode;
                currentNode = currentNode.next;
            }

            node.next = currentNode;
            previousNode.next = node;
        }
        this.size++;
    }

    removeElement(element){
        let currentNode = this.head;
        let previousNode;

        while(currentNode !== null){
            if(currentNode.element === element){
                if(previousNode === null){
                    this.head = currentNode.next;
                }else {
                    previousNode.next = currentNode.next;
                }
                this.size--;
                return currentNode.element;
            }
            previousNode = currentNode;
            currentNode = currentNode.next;
        }
        return -1;
    }

    printList(){
        let currentNode = this.head;

        while(currentNode){
            console.log(currentNode.element);
            currentNode = currentNode.next;
        }
    }
}

const linkedList = new LinkedList;
linkedList.add(1);
linkedList.add(2);
linkedList.add(3);
linkedList.insertAt(100, 2);
linkedList.insertAt(99, 0);
linkedList.removeElement(3);
console.log(linkedList.size);
console.log(linkedList.head);
console.log(linkedList.head.next);

linkedList.printList();