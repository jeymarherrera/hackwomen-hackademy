const validarIngredientes =()=>{
    return new Promise((resolve, reject)=>{
        if(true){
            resolve("Se validaron ingredientes");
        }else{
            reject("No se ha podido validar los ingredientes");
        }
    });
};

const entrarCocina =()=>{
    return new Promise((resolve, reject)=>{
        if(true){
            resolve("La pizza ya esta cocinandose");
        }else{
            reject("No se ha podido cocinar");
        }
    });
};

const cocinarPizza = async() =>{
    try {
        const mensajeValidacion = await validarIngredientes();
        let mensajeCocina = await entrarCocina();
        console.log(mensajeValidacion);
        console.log(mensajeCocina);
    } catch (error) {
        console.log(`Error:: ${error}`);
    }
}

cocinarPizza();