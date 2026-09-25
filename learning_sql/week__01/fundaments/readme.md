===__SQL__=== 

SEMANA 1- 23 SEPTIEMBRE AL 27 SEPTIEMBRE

Structure Query Language = Lenguaje de Consultas Estructurada

Bases de datos: almacena y consulta grandes cantidades de información que pueden ser cruzadas entre sí para relacionarlas en tablas y columnas/filas (SQL) como MySQL o PostgreSQL o no relacionadas (NoSQL) que son archivos tipo json o son esquemas más flexibles como MongoDB.

Las primeras bases de datos estaban basadas en ficheros pero no era tan complejo, o sea, solo guardar, pero relacionarlo era lo complicado (nombres del cliente, el stock, cantidades, etc.).

SQL está estandarizado por ISO (International Organization for Standarization). Sirve para que cumplir requisitos sin importar el país.
Y también está ANSI (American National Standars Institute). Coordina el desarrollo de normas en USA pero tiene peso enorme en la industria global.
Por lo tanto, todas las bases de datos usan normas preestablecidas por los organismos anteriores.

DBMS (DataBase Managment Sistem): son los diferentes instrumentos para usar basa se datos.
RDBMS (Gestor de base de datos relacional): como MySQL.

Tenemos las FILAS que son OBJETOS (o REGISTROS) y tenemos las COLUMNAS que son los atributos de estos objetos.

__MySQL__

Cliente: mecanismo que nos permite interactuar con la DB.

Ya instalé MySQL pero Windows no los abre entonces no ha sido agregado a la liSta de comandos, por lo que tuve que agregar el PATH a la lista para que la terminal en uso pueda usarla. en este caso agregué el PATH que debe ser exactamente la carpeta BIN (C:\Program Files\MySQL\MySQL Server 8.0\bin\). 
Este PATH lo agregué a sysdm.cpl --> Advanced → Environment Variables --> Path → Edit --> New → ruta del bin

Esto lo hago porque MySQL es un motor de DB que no es programa de uso general, entonces las personas suelen usar WorkBench. Los programadores suelen usar Workbench de MySQL en vez de instalarlo. Es como VSCode de MySQL. Algunos principiantes creen que solo instalar Workbench le da permiso para usar MySQL pero no, se debe instalar de todas maneras.

Bueno, yo ocuparé la terminal que es menos amigable como inicio. Entonces en la terminal usé:
mysql --versión > para saber si estaba instalado y todo ok. Además para ingresar a MySQL desde la terminal se debe usar los siguientes comandos que después pedirán contraseña:

mysql -u root -p

mysql> es el cliente, le dices a la terminal "Quiero conectarme al servidor"
-u> significa usuario
root> es el usuario administrador de MySQL entonces
-u root> le dice conéctame al usuario root el que tiene permisos totales
-p> de password, o sea le dices que te pida contraseña

Si el usuario tiene contraseña y no pongo -p me tira el siguiente error:
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: NO)

Para ver que tenemos uso:
show databases;

puedo usar exit para salir.

Pero Ahora lo que hice fue usar Workbench y crear una conexión

En la workbench creé mi primera base de datos con:

CREATE DATABASE hello_mysql;

*****Hay una diferencia entre SCHEMA y DB

Primary Key PK: yo puedo indicar que uno o más campos puede ser la que va a identificar de forma única a cada uno de los registros. solo hay un usuario con identificador uno o 2 o tres
Not Null NN, no nulo: indica que si hay una clave principal, si alguien guarda datos en esta tabla tiene que darle un identificador para que la tabla no se rompa para que no hayan usuarios sin identificación.
UQ, UNIQUE: que no se puede repetir
AI Auto Increment: Así me aseguro que si inserto un usuario comienza con el primer numero entero o identificador de tipo entero, entonces vamos sumando usuarios de 1 en 1. Para que no se puedan repetir, así se me saca un trabajo encima.
usamos el VARCHAR con máximo de 50.
¿Si quiero que un usuario siempre tenga un nombre qué hago? marco el NN así me mete usuarios que mínimo tenga nombre
el surname lo dejo libre así dejo que si no tiene apellido alguien no hay problema.

Sentencias (EN MAYÚSCULAS POR CONVENCIÓN):

SELECT: Seleccionar x columna. el uso de * selecciona todo.
FROM: Seleccionar el origen de lo que buquemos
DISTINCT: Variabl;es que son diferente, y nos muestras las que no son NULL y muestra una variables si hay otras que se repiten
WHERE: Nos ayuda a encontrar el usuario con el atributo específico
ORDER BY: Nos ordena de menor a mayor pord efecto, sin usammos ASC es ascendente y  DESC, se usa despues del atributo que viene del FROM y el ASC o DESC se usa después del atributoi que tiene ORDER BY
LIKE: dando un crierio de búsqueda variable, solo buscar por ejemplo usuarios con gmail. contiene o se aprece a
criterios búsqueda dinámicos: con % todo lo que haya antes de algo se considere por defecto
LIMIT: los criterios que piden dependiendo del atributo línmite, prenssar que este se puede usar cuando tenemos millones de usuarios
AND, OR, NOT: Booleanos u operadores lógicos


**si no tenemos espacios no ponemos comillas, pero si usamos texto despues de un = usamos comillas

También creé mi segundo repositrio con:

git remote add origin https://github.com/drivenbycode1-byte/cibersecurity.git
git add .
git commit -m "Mi primer commit" 
git push -u origin main > -u establece el upstream de mi rama local con una rama remota.

push → sube tus commits al repositorio remoto.
origin main → sube la rama local main al remoto origin.
-u (--set-upstream) → deja configurada la relación entre tu main local y origin/main.