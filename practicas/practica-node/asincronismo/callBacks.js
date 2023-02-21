//cocinacion
function crearPizza(ingrediente1, ingrediente2){
    //operacion 1 -. validar ingredientes disponibles y horno 
    setTimeout(() => {
        console.log(`Si se encuentran en inventario los ingrediente ${ingrediente1}, ${ingrediente2}`);
        console.log(`El horno esta funcionando correctamente`)
    }, 3000);
    //operacion 2 -> notificar al cliente
    console.log(`Su pizza esta en cocina para prepararse :)`)
}

//crearPizza("Queso", "Pepperoni")

//manejo de asincronismo con callback en js
function cocinarPizza(ingrediente1, ingrediente2, callback){
    callback(ingrediente1, ingrediente2, entraCocina);
    console.log(`Su pizza esta en cocina para prepararse :)`)
}

function validarIngredientes(ingrediente1, ingrediente2, callback){
    console.log(`Si se encuentran en inventario los ingrediente ${ingrediente1}, ${ingrediente2}`);
    callback();
}

function entraCocina(){
    console.log("Su pedido ha entrado a cocina")
}
cocinarPizza("Queso", "Pepperoni", validarIngredientes)