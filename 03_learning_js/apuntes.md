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

Usamos la consola de Google con F12 y usamos el primer comando  que es alert(), esto nos deja un mensaje. Lo podemos usar en cualquier website.
Las instrucciones como alert() es el código y el mensaje es cuando el código corre. 
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