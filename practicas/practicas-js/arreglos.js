var edades = [20, 21, 22, 23];

edades.push(24);
edades.unshift(19);
edades.pop()

for (var i=0; i<edades.length; i++){
    console.log(`El elemento de la posicion ${i} es igual a ${edades[i]}`)
}