class Perro {
    constructor(nombre, color, edad){
        this.nombre = nombre;
        this.color = color;
        this.edad = edad;
    }

    ladrar(saludo){
        return `${this.nombre}: ${saludo}`
    }

    toString(){
        return `Hola, mi nombre es ${this.nombre} y yo soy de color ${this.color}`
    }
}

class Husky extends Perro{
    jalarTrineo(){
        return `${this.nombre} esta jalando el trineo` 
    }

    ladrar(){
        return `Nuevo ladrido: arf`
    }
}

class Bulldog extends Perro{
    morder(){
        return `${this.nombre} esta mordiendo!` 
    }
}

let perro = new Perro();
perro.ladrar();
perro.ladrar('guau!')