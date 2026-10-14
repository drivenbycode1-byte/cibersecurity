console.log(20.95 + 7.99)

//Para redondear el resultado que sale con muchos 0, usamos un math.round

console.log(Math.round(20.95 + 7.99))

// Pero si queremos usar el valor real podemos divir y multiplicar

console.log(((2095 + 799) * 0.1) / 100)

/*Si queremos sacar resultados con mmonedas (como dolares y centavos), podemos hacer lo siguiente:
Redondeamos primero el porcentaje y eso lo dividimos por 100*/

console.log(Math.round((2095 + 799) * 0.1) / 100)

