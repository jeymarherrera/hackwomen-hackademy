//scope global
var edad = 22;

//scope local
//dentro de la funcion
function saludar(){
    var nombre = "Jeymar";
    console.log("Hola! mi nombre es"+nombre+" y tengo "+edad+" anios");
    //template literal
    console.log(`Hola! mi nombre es ${nombre} y tengo ${edad} anios`);
}