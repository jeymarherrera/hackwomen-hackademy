//ES6
class Persona {
    constructor(nombre, edad){
        this.nombre = nombre;
        this.edad = edad;
    }

    //Metodos
    saludar(){
      return `Hola mi nombre es ${this.nombre} y tengo ${this.edad}anios`  
    }
}

const jeymar = new Persona("Jeymar",22);
const persona2 = new Persona("Camila",16);
console.log(jeymar.saludar());
console.log(persona2.saludar());

//common JS
//module.exports = {jeymar};

//es6
export{jeymar};