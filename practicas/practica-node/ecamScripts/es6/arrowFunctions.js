function saludar(){
    return "Hola mundo!"
}

let saludarDos=(nombre)=>{
    return `Hola $(nombre)!`;
}

let saludarTres=(nombre)=> `Hola $(nombre)!`;

console.log(saludar());
console.log(saludarDos("Jeymar"));