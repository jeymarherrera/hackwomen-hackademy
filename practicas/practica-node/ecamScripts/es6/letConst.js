var edad = 22;
// let const
//su diferencia es el scope

{
    var varGlobal = 'Hola desde var global'
}

{
    let letGlobal = 'Hola desde let global'
    console.log(letGlobal)
}

console.log(varGlobal)
//error -  let es solo local
//console.log(letGlobal)

//const

const numero = 10;

//error - es una constante
//numero = 15;