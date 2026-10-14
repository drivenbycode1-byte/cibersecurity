// Creando texto
console.log('Hello')

//texto combinado = Concatenación
console.log('Hola' + 'Bro')

// texto separado
console.log('Hola', 'Bro')

// Si combinamos string con number nos dá un string = Type coercion / automatic type conversion
console.log('Hola' + 4)

// si queremos sumar algo con un string tenemos el problema que de los resultados maths los convierte en string
console.log('$' + 20.95 + 7.99) // = $20.957.99

//Por eso tnemos el orden de operación con los ()
console.log('$' + (20.95 + 7.99)) // = $28.939999999999998
console.log('$' + (2095 + 799) / 100) // = $28.94
console.log('Items (' + (1 + 1) + '): $' + (2095 + 799) / 100)
console.log(`Items (${1 + 1}): $${(2095 + 799) / 100}`) // aquí usamos la interpolación con con template string `` y ${} que sirve para unir texto y valores numéricos 

//Multiline string con template strin
const mensaje = `
Hola, soy Diego Silva
Tengo 35 años y
estoy practivando Javascript.
`;

console.log(mensaje)