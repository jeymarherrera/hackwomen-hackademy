var persona = {
    nombre: "Jeymar",
    edad: 20,
    telefono: "666666",
    bienvenida: function (){
        console.log(`Hola mi nombre es ${this.nombre} y tengo ${this.edad} anios`);
    },
};

console.log(persona.nombre);
console.log(persona.bienvenida);
console.log(persona.bienvenida());

function persona(nombre, edad, telefono){
    this.nombre = nombre;
    this.edad = edad;
    this.telefono = telefono;
}

var persona1 = new persona("Jeymar", 22, "666666");
console.log(persona1);

for(var i=0; i<persona.length; i++){
    console.log(persona[i].nombres)
}

persona.forEach(function(persona){
    console.log(persona.nombre);
});

persona.map(function(persona){
    return(persona.nombre);
});

persona.find(function(persona){
    return(persona.nombre === "Jeymar");
});