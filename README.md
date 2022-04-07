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

 -           1 -  1  -  1  -  1  -  1  -  0  - 1   -  0  - 0   - 0   - 0
     
De esta manera sumamos cada casilla con su valor para saber donde ubicar los "1" y saber que valores necesitamos ir sumando para obtener nuestro numero requerido. Este es el método que he usado yo siempre, no es muy rápido pero me ha parecido util para entender los binarios.
