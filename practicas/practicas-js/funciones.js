//Declarativas: llamadas e implementadas
function sumar(a,b){
    return a+b;
}

sumar(10,20);

//De Expresion: asignacion de funcion a una variable. definidas antes de ser llamadas
var sumar = function(a,b){
    return a+b;
}

sumar(30,40);