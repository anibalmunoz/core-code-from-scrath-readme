function addBinary(a, b) {
    let suma = a + b;
    let binario = suma.toString(2);
    let decimal = suma;
    let respuesta = a + "," + b + " --> " + '"' + binario + '"' + " (" + a + " + " + b + " = " + suma + " in decimal or " + binario + " in binary)";
    console.log(respuesta);
	return respuesta;
}

addBinary(1, 2);