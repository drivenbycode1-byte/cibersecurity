-- ============================================
-- JAVASCRIPT
-- Autor: Diego Silva
-- Fecha: 2024-10-13
-- ============================================

Este repositorio contiene fundamentos y mis prácticas de Javascript como parte de mi ruta hacia ciberseguridad y análisis de datos.

JS es para es un lenguaje de programación para desarrollar páginas web.
Se usan 3 Lenguajes para crear una página web:
- HTML: conteinod del website, botones, texto, imágenes
- CSS: cambia la aparencia
- Javaspcript: Interacciones con botones, sumar orders, sumar productos al carro, etc.


=== Numbers ===

Usamos la consola de Google con F12 y usamos el primer comando  que es alert(), esto nos deja un mensaje. Lo podemos usar en cualquier website.
Las instrucciones como alert() es el código y el mensaje es cuando el código corre = o sea un Pop Up. 
podemos hacer matemáticas en la consola solo con usar números y símbolos, no es necesario poner un comando previo
document.body.innerHTML = 'hello'; --> Esto nos ayuda a limpiar la página e imprime el texto 'hello'
Tenemos los operadores básicos.
Tenemos los "Integers" y "Floats".
Para evitar problemas con floats que suman muchos 0, podemos convertir los floats a enteros, como por ejemplo cuandos sumamos dinero. Podemos convertir dólares a centavos o podemos usar un round como Math.round(). Recordar que redonde y saca los decimales

Para ejecutar archivos en Bash ocupamos "node nombre_archivo.js".
Y para que este se pueda ejecutar ocupas dentro del archivo js "console.log()" para que aparezca la información en la terminal

**** SI quiero que run solo muestre en la terminal el archivo sin tener que hacer "node arvhivo.js" podemos:
File → Preferences → Settings
Buscar: Code Runner
Activar esta opción:
Code
****Code Runner: Run In Terminal

Para redondear hacian abajo usamos el "Math.floor()"
Para redondear hacia abajo usamos "Math.ceil()"
*Recordar que round redonde dependiendo de la regla del .5, mietras que ceil siempre es hacia arriba y floor es hacia abajo


=== Strings ===

Para ver en la terminal un mensaje hacemos console.log('')
al combinar dos textos 'x' + 'x' el resultado nos dará una concatenación
Podemoss saber que valor representa lo que tenemos con "typeof"
Tenemos el Escape Caracther que se usa en un string con \ para indicar que es solo una letra o simbolo o numero en un texto
\n new line caracthaer  
template string ``(se usa con le botón escape), y tiene el pdoer de  insertaerun valor directamente en un string, lo usamos con ${} que es llamado uinterpolacion todfo esto.
Entonces tenemos Concatenación e Interpolación
también tenemos el multiline string que también se usa con template string, en donde automaticamente, si escribimos y dejamos texto abajo nos da automaticamente /n
El console.log cunmple la función de print en Python.


=== HTML & CSS Review ===

HYper Text Markup Language --> Given instruccion to the computer
<button>hello</button>
<p>paragraph of text</p>
TAG
Nesting = taga dentro de tag

CSS --> Cascading Style Sheets + change appeerance of a website
no aparece visible como el HTML. solo ambias apariencia
podemos usar el live server en settings para ir cambiando en tiempo real la apariencia de la página web, vamos a live server server custom y cambiamos el null a alguna página que estemos ocupando como chrome y con click derecho ponemos en el archivo html ponemos open with live server

JS --> lo podemos escribir en el <script> o en el atributo


=== Variables ===

Una variable vendría siendo como un contenedorque guarda un valor y lo usa después con let
NO podemos usar let como variable, pero sí let1 u otros con let
Tampoco podemos empezar con números por que JS lo interpretará como número solamente
La diferencia entre let y const es que en la última no podemos cambiar la variable una vez creada como en let
También tenemos var y funciona como let
Tenemos typeof que nos dice que tipo de variable es algo, como numer or string, nos sirve para chequear valores


=== Booleans ===

Another type of value: True or False
La diferencia entre == y === es que == convierte dos valores en el mismo tipo
si el valor de if es false el código no se expresará
if statement (instrucción): if es una declaración, dentro hay una condición if (condición). Si se cumple la condición corre el código.
Cuando creamos los pasos para resolver un problema con código, lo llamamos algoritmo
&& es and
|| es or
! es Not Operator, solo usa un valor buleon  lo convierte en el valor contrario
Scope es el espacio entre brackets en donde puedo esscribir código
También tenemos el ternary operator que funciona en javascript así: varaible = ¿condición? → entonces esto : si no, esto otro  = (condition ? A : B)


=== Functions ===

Nos deja reusar el código
Tracing the code = Useful to know eaht's code is doing
When can use global variable or return statement
Parameters es diferente al return,
Return = obtiene un valor fuera de la función
Parameter = Pone un valor dentro de una función
Cuando pasamos el valor a una función, después de haber designado el parámetro, decimos que esa función tiene un argumento:
    function calculate_tax(parameter) {
        console.log(parameter * 0.1)
    }

    calculate_tax(2000) // 2000 argument


=== Objects ===

Agrupa múltiples vlues juntos
El property sirve para conocer un value específico
podemos cambiar el valor asociado al valor asociado property con opbject.name = 'xxxx'
lo que está dentro de curly brackets es el property-pair value
podemos agregar también un par valor
tambien podemos borrarlo con delete 
nos sirve para tener código organizado al tener variables relacionadas todoa juntos y también usarlas juntas.
Tenemos los backets notations que hace los mismos que los dot notation (que llama al valor asociado al property)
Nested object: Objetos dentro de objetos
Method: Funcion dentro de un objeto
BUilt-in objects: Objetos provistos por el mismo lenguaje, como JSON y localStorage
JSON: Javascript Object Notation --> Tiene una sintax como un objeto de JS pero con menos features. Deben usar double quotes "" y no soporta funciones.
JSON es universal, puede ser usado por muchos lenguajes.
Built-in JSON Object: convierte objeto de JS a JSON.

