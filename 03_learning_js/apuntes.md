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
El console.log cunmple la función de print en Python
