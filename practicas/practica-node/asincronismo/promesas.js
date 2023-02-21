const cocinarPizza = () =>{
    return new Promise((resolve, reject)=>{
        if(true){
            resolve("Los ingredientes estan listos");
        }else{
            reject("Ups fallo!");
        }
    });
};

const entradaCocina = () =>{
    return new Promise((resolve, reject)=>{
        if(true){
            resolve("Su pizza ya esta en cocina");
        }else{
            reject("No ha podido entrar a cocina su pedido");
        }
    })
}

const terminarPizza =()=>{
    return new Promise((resolve, reject)=>{
        if(true){
            resolve("Su pizza ha sido terminada");
        }else{
            reject("No ha podido terminar su pedido");
        }
    })
}
cocinarPizza()
 .then((response)=> {
    console.log(response);
    entradaCocina().then((response)=>{
        console.log(response);
        terminarPizza().then((response)=>{
            console.log(response);
        })
        .catch((error)=>{
            console.log(`Error:: ${error}`);
        })
    })
    .catch((error)=>{
        console.log(`Error:: ${error}`);
    })
}).catch((error)=>{
    console.log(`Error:: ${error}`);
});