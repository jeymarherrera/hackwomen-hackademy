//creacion del stack
class Node {
    constructor(element){
        this.element = element;
        this.next = null;
    }
}

class Stack {
    constructor(){
        this.top = null;
        this.size = 0
    }

    push(element){
        const node = new Node(element);
        node.next = this.top;
        this.top = node;
        this.size++;
    }

    pop(){
        const currentNode = this.top;
        this.top = currentNode.next;
        this.size--;
        return currentNode.element;
    }

    //revisar nodo superior del stack
    peek(){
        return this.top.element;
    }

    //revisar si el stack esta vacio
    isEmpty(){
        return this.size === 0;
    }

    //imprimir stack
    printStack(){
        let currentNode = this.top;
        while(currentNode){
            console.log(currentNode.element);
            currentNode = currentNode.next;
        }
    }
}
// {[]} isBalanced true
// {(]} isBalanced false

function isBalanced(expression){
    const stack = new Stack;

    for (let i=0; i<expression.length; i++){
        if(expression[i] == '}' || expression[i] == ')' || expression[i] == ']'){
            if(stack.isEmpty()){
                return false;
            }

            let output = stack.pop();

            if((expression[i] === '}') && (output !== '{') ||
                (expression[i] === ')') && (output !== '(') ||
                (expression[i] === ']') && (output !== '[')){
                return false;
            }
        } else{
            stack.push(expression[i]);
        }
    }
    if (stack.isEmpty() === false) {
        return false;
    }
    return true;
}

let input = "{()}"
console.log(input);
console.log(isBalanced(input));

input = "{(]}"
console.log(input);
console.log(isBalanced(input));
// const stack = new Stack;
// stack.push(1);
// stack.push(2);
// stack.push(3);
// stack.push(35);
// stack.push(77);

//console.log(stack.top.next);
// let element = stack.pop();
// console.log(element);

// element = stack.pop();
// console.log(element);

// console.log(stack);

// console.log(stack.peek());
// console.log(stack.peek());
// console.log(stack.peek());
// stack.pop();
// console.log(stack.peek());

console.log(stack.isEmpty());