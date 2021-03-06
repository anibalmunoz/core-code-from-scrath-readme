# core-code-from-scrath-readme
# Semana 1
## Martes
### Pregunta 1 : Explicación sobre Lenguajes de programación interpretados y compilados

Los lenguajes de programación compilados crean programas que se traducen directamente por la máquina de destino. En cambio, en un leguaje interpretado la traduccion de codigo se realiza por un programa externo al que se le llama intérprete.

Los lenguajes compilados traducen directamente el código y esto hace que el desarrollador tenga mejor control sobre aspectos como uso de procesamiento y de memoria. Algunos ejemplos son C y C++.

Por otra parte los lenguajes interpretados traducen linea por linea cada vez que se ejecutan. Este proceso es mas rápido que compilar todo el programa, pero es mas lento que ejecutar un programa que ya está compilado. Algunos ejemplos Javascript y PHP. Estos lenguajes pueden ser multiplataforma, son faciles de probar y debuggear 

### Pregunta 2 : ¿Java está compilado o interpretado, o ambos?

En respuesta corta es: ambos. Esto se debe a que java compila el código en ByteCode y luego este código puede ser interpretado por las Java Virtual Machine en cualquier sistema operativo.

### 3: Ejercicio de conversión de moneda de pseudocódigo

`Pseudocódigo para conversión de Dolar USD a Bitcoin BTC`

```
1. START
2. A <-- GET
3. B <-- 0.000023
4. R <-- A*B
5. PRINT R
6. END 
```

### 4: Aprender sobre lenguajes de alto y bajo nivel

## Miercoles

### 1. Your date of birth in the matrix? exercise

Mi fecha de cumpleaños es 2000, este número en binario se puede convertir facilmente con una tabla como la siguiente: Y con una tabla en donde cada posición tiene un valor distitno vemos cual es el valor que necesitamos tener el cual es 2000. asi que debemos colocarnos en la casilla mas proxima a este valor pero que no lo supere.

 - 2^11 - 2^10 - 2^9 - 2^8 - 2^7 - 2^6 - 2^5 - 2^4 - 2^3 - 2^2 - 2^1 - 2^0
 - 2048 - 1024 - 512 - 256 - 128 - 64  - 32  - 16  - 8   - 4   - 2   - 1

 - 1 -  1  -  1  -  1  -  1  -  0  - 1   -  0  - 0   - 0   - 0
     
De esta manera sumamos cada casilla con su valor para saber donde ubicar los "1" y saber que valores necesitamos ir sumando para obtener nuestro numero requerido. Este es el método que he usado yo siempre, no es muy rápido pero me ha parecido util para entender los binarios.

### 2. MIPS exercise

1. El primer programa que hice se encarga de Sumar 2 números ingresados por el usuario:

```
    .data
	      number1: .asciiz "\nIngrese el primer numero: "
	      number2: .asciiz "\nIngrese el segundo numero: "
    .text
	       main:
              li $v0, 4
              la $a0, number1
              syscall

              li $v0, 5
              syscall

              move $t0, $v0

              li $v0, 4
              la $a0, number2
              syscall

              li $v0, 5
              syscall

              move $t1, $v0

              add $t2, $t0, $t1

              li $v0, 1
              move $a0, $t2
              syscall
```

![alt text](https://raw.githubusercontent.com/anibalmunoz/core-code-from-scrath-readme/main/Sesion%202/suma2numero.jpg)

2. El segundo programa muestra mi nombre cada vez que se ejecuta.
```
  .data
	      result_message: .asciiz "\nMi nombre es Anibal Estuardo Muñoz Hernández "
  .text
	      main:
             
              li $v0, 4
              la $a0 result_message
              syscall             

```

![alt text](https://raw.githubusercontent.com/anibalmunoz/core-code-from-scrath-readme/main/Sesion%202/minombre.jpg)

## Jueves
### 1. Print special numbers exercise

En mi casó utilicé el bucle for para poder imprimir los números en consola.

```
for (let i = 0; i <= 100; i+=2) {
    console.log(i)
}
```

### 2. Bad Code exercise

En este caso el código estaba haciendo lo siguiente `if ((cond=true))` , esto es incorrecto ya que ahí lo que se está haciendo es asignandole true a la variable cond ya que = representa una asignación, una opción correcta sería colocar doble sigo igual `if((cond==true))` ya que el doble igual si representa una comparación. y otra solución es la que yo realicé la cual es la siguiente:


```
var cond = false;

if (cond) {
  console.log('The cond variable is true');
} else {
  console.log('The cond variable is false');
}
```

Al colocar unicamente el nombre del booleano, en este caso `cond`, el lenguaje de programación infiere que estamos comprovando su `true`, asi que no hace falta escribir `cond==true`.

### 3. Bad Code 2 exercise

El problema es el siguiente: 

Mi resultado a este problema fue el siguiente.

```
var n = 100;

if (n == 100) {
  console.log('This is a special number!');
} else if (n < 1000 && n % 10 == 0) {
  console.log('This number is almost special');
} else {
  console.log('Just a regular number');
}
```

### 4.  Seguir el curso de GIT



# SEMANA 2

## Lunes

CREACIÓN DE CUENTA DE CODEWARS Y LECTURAS SOBRE CONDICIONALES

## Martes


### 1. Multiply

Mi solución:

```
function multiply(a, b){
  return a * b;
}
```

### 2. ASCII Total

Mi solución es la siguiente:

```
function uniTotal (string) {
// total up dem unicodes!
   let total=0;
    for (let i = 0; i < string.length; i++) {
        total = total + string.charCodeAt(i);    
    }

    return(total);
}
```

### 3. Char From ASCII Value

Mi solución es la siguiente:

```
function getChar(c){
  // ...
   let caracter = String.fromCharCode(c);
    return caracter;
}
```


### 4. Binary Addition

Mi solución:

```
function addBinary(a,b) {
    let suma = a + b;
    let binario = suma.toString(2);    
    let respuesta = a + "," + b + " --> " +'"'+ binario + '"' + " (" + a + " + " + b + " = " + suma + " in decimal or " + binario + " in binary)";
    return respuesta;
}
```

### 5. Student's Final Grade

Mi solución es la siguiente:

```
function finalGrade (exam, projects) {
   if (exam > 90 || projects > 10) {
        nota = 100;
    } else if (exam > 75 && projects >= 5) {
        nota = 90;
    } else if (exam > 50 && projects >= 2) {
        nota = 75;
    } else {
        nota = 0;
    }

    let respuesta = exam + ", " + projects + " --> " + nota;
    return nota;
}
```

## Miercoles

### 1. Holiday VIII - Duty Free

Mi resultado fue el siguiente:

```
function dutyFree(normPrice, discount, hol){
multiplicador=(normPrice*(discount*0.01));
resultado=hol / multiplicador;
  return Math.floor(resultado);
}
```

### 2. Twice As Old

Mi solucion es la siguiente:

```
function twiceAsOld(dadYearsOld, sonYearsOld) {
  // your code here
  hijo2=sonYearsOld*2;
  return Math.abs(dadYearsOld-hijo2);
}
```

### 3. Valid Spacing

Mi solucion fue la siguiente:

```
function validSpacing(s) {
  // write your code here
   let espacioInicial=false;
  let espacioFinal=false;
  let espacioDoble=false;
  
 

  if(s[0]==" "){
    espacioInicial=true;
  }
  
  if(s[s.length-1]==" "){
    espacioFinal=true;
  }
  
    for(let i = 0; i < s.length; i++) {
    if(s.charAt(i) === ' '){
      if(i != 0 && s.charAt(i-1) === ' ') {
        espacioDoble =true;
      }
      if(i != (s.length - 1) && s.charAt(i+1) === ' ') {
        espacioDoble=true;
      }
    }
  }
  
  if(espacioFinal || espacioInicial || espacioDoble){
    return false;
  }
  else{
    return true;
  }
}
```


### 4. Fake Binary

Mi solucion fue la siguiente

```
function fakeBin(x){
 let resultado="";
  
  for(i=0;i<x.length;i++){
    if(x[i]<5){
      resultado += "0";
    }else if(x[i]>=5){
      resultado += "1";
    }
  }
  
  return resultado;
}
```

## Jueves

### 1. Remove All Exclamation Marks From The End Of Sentence

Mi solución fue la siguiente

```
function remove (string) {  
  
  let stop;
  
  for(let i=string.length-1;i>=0;i--){
      
    if(string[i]!="!"){          
      stop=i+1;
      break;
    }
    
  }
 
  return string.substring(0,stop);
}
```

### 2. Vowel Remover

My solution:

```
function shortcut (string) {
  
  let resultado="";
  
  for(let i=0;i<string.length;i++){
    
  if(string[i]=="a" || string[i]=="e" || string[i]=="i" || string[i]=="o" || string[i]=="u"){
    continue;  
  }else{
    resultado += string[i];
  }
      
  }
  
  return resultado;
}
```

### 3. Rock Paper Scissors!

My solution:

```
const rps = (p1, p2) => {
    if(p1=="scissors" && p2=="paper"){
    return "Player 1 won!";
  }
  if(p1=="scissors" && p2=="rock"){
    return "Player 2 won!";
  }
  
   if(p1=="paper" && p2=="scissors"){
    return "Player 2 won!";
  }
  if(p1=="paper" && p2=="rock"){
    return "Player 1 won!";
  }
  
    if(p1=="rock" && p2=="scissors"){
    return "Player 1 won!";
  }
  if(p1=="rock" && p2=="paper"){
    return "Player 2 won!";
  }
  
  if(p1==p2){
    return "Draw!";
  }
};
```

### 4. Persistent Bugger

My solution:

```
function persistence(num) {
  if (num.toString().length === 1) {
    return 0;
  }
  var mult = 1;
  var splitStr = num.toString().split("");
  for (var i = 0; i < splitStr.length; i++) {
    mult *= parseFloat(splitStr[i])
  }
  return 1 + persistence(parseFloat(mult));
}
```
