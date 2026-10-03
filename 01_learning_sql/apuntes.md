-- ============================================
-- SQL - CYBERLAB
-- Autor: Diego Silva
-- Fecha: 2024-09-23
-- ============================================

===**SQL**===

SEMANA 1- 23 SEPTIEMBRE AL 27 SEPTIEMBRE

23 y 24 de Septiembre:

Structure Query Language = Lenguaje de Consultas Estructurada

Bases de datos: almacena y consulta grandes cantidades de información que pueden ser cruzadas entre sí para relacionarlas en tablas y columnas/filas (SQL) como MySQL o PostgreSQL o no relacionadas o documentales (NoSQL) que son archivos tipo json o son esquemas más flexibles como MongoDB.

Las primeras bases de datos estaban basadas en ficheros pero no era tan complejo, o sea, solo guardar, pero relacionarlo era lo complicado (nombres del cliente, el stock, cantidades, etc.).

SQL está estandarizado por ISO (International Organization for Standarization). Sirve para que cumplir requisitos sin importar el país.
Y también está ANSI (American National Standars Institute). Coordina el desarrollo de normas en USA pero tiene peso enorme en la industria global.
Por lo tanto, todas las bases de datos usan normas preestablecidas por los organismos anteriores.

DBMS (DataBase Managment Sistem): son los diferentes instrumentos para usar basa se datos.
RDBMS (Gestor de base de datos relacional): como MySQL.

Tenemos las FILAS que son OBJETOS (o REGISTROS) y tenemos las COLUMNAS que son los atributos de estos objetos.

**MySQL**

Cliente: mecanismo que nos permite interactuar con la DB.

Ya instalé MySQL pero Windows no los abre entonces no ha sido agregado a la liSta de comandos, por lo que tuve que agregar el PATH a la lista para que la terminal en uso pueda usarla. en este caso agregué el PATH que debe ser exactamente la carpeta BIN (C:\\Program Files\\MySQL\\MySQL Server 8.0\\bin).
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

CREATE DATABASE hello\_mysql;

\*\*\*\*\*Hay una diferencia entre SCHEMA y DB

Primary Key PK: yo puedo indicar que uno o más campos puede ser la que va a identificar de forma única a cada uno de los registros. solo hay un usuario con identificador uno o 2 o tres
Not Null NN, no nulo: indica que si hay una clave principal, si alguien guarda datos en esta tabla tiene que darle un identificador para que la tabla no se rompa para que no hayan usuarios sin identificación.
UQ, UNIQUE: que no se puede repetir
AI Auto Increment: Así me aseguro que si inserto un usuario comienza con el primer numero entero o identificador de tipo entero, entonces vamos sumando usuarios de 1 en 1. Para que no se puedan repetir, así se me saca un trabajo encima.
usamos el VARCHAR con máximo de 50.
¿Si quiero que un usuario siempre tenga un nombre qué hago? marco el NN así me mete usuarios que mínimo tenga nombre
el surname lo dejo libre así dejo que si no tiene apellido alguien no hay problema.

Sentencias (EN MAYÚSCULAS POR CONVENCIÓN):

SELECT: Seleccionar x columna. el uso de \* selecciona todo.
FROM: Seleccionar el origen de lo que buquemos
DISTINCT: Variabl;es que son diferente, y nos muestras las que no son NULL y muestra una variables si hay otras que se repiten
WHERE: Nos ayuda a encontrar el usuario con el atributo específico
ORDER BY: Nos ordena de menor a mayor pord efecto, sin usammos ASC es ascendente y  DESC, se usa despues del atributo que viene del FROM y el ASC o DESC se usa después del atributoi que tiene ORDER BY
LIKE: dando un crierio de búsqueda variable, solo buscar por ejemplo usuarios con gmail. contiene o se aprece a
criterios búsqueda dinámicos: con % todo lo que haya antes de algo se considere por defecto
LIMIT: los criterios que piden dependiendo del atributo línmite, prenssar que este se puede usar cuando tenemos millones de usuarios
AND, OR, NOT: Booleanos u operadores lógicos



\*\*si no tenemos espacios no ponemos comillas, pero si usamos texto despues de un = usamos comillas

También creé mi segundo repositrio con:

git remote add origin https://github.com/drivenbycode1-byte/cibersecurity.git
git add .
git commit -m "Mi primer commit"
git push -u origin main > -u establece el upstream de mi rama local con una rama remota.

push → sube tus commits al repositorio remoto.
origin main → sube la rama local main al remoto origin.
-u (--set-upstream) → deja configurada la relación entre tu main local y origin/main.

EJERCICIOS LISTOS.

25 DE SEPTIEMBRE:

Seguimos con commandos:

IS NULL: seleccionar los usuarios que tengan información nula.
IS NOT NULL: selecciona a usuarios que no tengan NULL.
MIN / MAX: usarlo por ejemplo para usuarios que tiene cierta edad específica y quiero darles un premio, por lo general es muy selectivo. habitualmente
COUNT: Cuenta los atributos totales de cierta información.
SUM: Suma los valores.
AVG: comando average que calcula la media.
IN: hacer un filtrado en donde conocemos diferentes valores. Para usarlo debemos estar 100% seguros
AS (ALIAS): Para dar nombre distinto a lo que tenemos, darle un Nick para que sea más fácil identificar
CONCAT: concatenar cadenas , atributoas, columnas. POR ejemplo, sacar nombre y apellido en euna misma columna
GROUP BY: agrupacion sin filtrado, se usa con criterios como con MIN o MAX
HAVING: cuando la clave no se puede usaar en funciones agregadas. Se usa habitual con funciones que agrupan de alguna manera. También como limitación sobre una columna que nosotros mismos escribimos.
CASE: en función de un resultado qué va a psar. lanzar una lógica concreta en función de una condición
tenemos WHEN, THEN, ELSE, END. Además debemos usar la coma ','
IFNULL: Cuando algo sea nulo, no me ponga el resultado nulo



* Cuando hacemos una restricción usamos el comando WHERE, no es case sensitive,
* Intentamos siempre comillas simples



Escritura de datos:

INSERT INTO: insertar datos en la tabla, siempre debe ir con VALUES al usar la fila.
UPDATE: Siempre se ahcen se ahcen aparte con regla de fiultrado, con la isntrucción SET, siempre que se modifique intentar hacerlo con cuidado y siempre con un WHERE por que si no se ACTUALIZA TOODOOO
DELETE: con delete usamos users poara indicarle la tabla que queremos borrar. Siempre con condición de filtrado, o sea, siempre ocupar el WHERE



27 DE SEPTIEMBRE:

Administración DB

A nivel de uso diaria, y sobretodo trabajando en My SQL, crear un Schema y crear una DB es lo mismo, pero en estricto rigor es:

* DB: Es el contenedor físico y lógico principal dentro del servidor de SQL que almacena todos los archivos de datos, registros de transacciones y configuraciones de seguridad. Alcance: Representa un entorno totalmente independiente. Las consultas directas entre distintas bases de datos requieren permisos especiales o conexiones explícitas. Comando: CREATE DATABASE nombre\_bd crea este gran contenedor general.
* Schema: Es una subdivisión lógica dentro de una misma base de datos que funciona como un contenedor o espacio de nombres para organizar objetos (como tablas, vistas, procedimientos y índices). Alcance: Pertenece a una base de datos específica y permite agrupar objetos por áreas de trabajo (por ejemplo, ventas, rrhh o desarrollo) y administrar mejor los permisos de usuario. Comando: CREATE SCHEMA nombre\_esquema.

CREATE DATABASE test;
DROP DATABASE test;

Escritura de datos:

Si quiero crear una tabla en concreto. Pero a diferencia de la primera clase, esta vez no lo haremos desde la interfaz gráfica, lo haremos
desde código SQL.
Se hará con:
CREATE TABLE xxxxx (value int, value varchar(100), value date); --> Con esto ya aplicamos una query con una tabla pero que no se puede modificar
porque no tiene una constraint (restricción):
- NOT NULL: yo no puedo insertar un valor en esta base de datos con la identificación igual a nulo.
- UNIQUE: también necesitamos un campo que nos de la posibilidad de que sea único, y que no se repita, por lo general es el identificador
- PRIMARY KEY: una buena práctica es crear los que es una clave primaria tambiíen deja claro que es único y este va a sewr el campo principal que nos ayuda para los registros
- CHECK: en el momento que creamos la tabla podemos guardarlo con un criterio, por ejemplo, usuarios mayores o iguales de 18 años
- DEFAULT: si no meto una infomación, quiero que después, por defecto, lo que reciba, sea algo predeterminado.
Podemos usar como criterio que el DATETIME sea el del momento con CURRENT_TIMESTAMP()
- AUTO INCREMENT: sirve para ir incementando el valor de algo, como si en el último identificador suma partidiendo desde el último creado

Para borrar una tabla con toda la información que contiene:
DROP TABLE persons8

Y para modificar a nivel de estructura tenemos:
ALTER TABLE:
- ADD: agrergamos un campo nuevo.
- RENAME COLUmn x TO x: renombramos un campo
- MODIFY COLUMN: modificamos caracterídticad del campo.
- DROP COLUMN: eliminar columna

RELACIONES ENTRE TABLAS:
Relación 1:1
- Cadan elemento de la tabla X puede estar relacionadod solo con un elemnte de la tabla Y, y visceversa.
- La clave foránea de X es la clave foránea de Y, por ejemplo, si tengo un nombre Diego con id 1 en la tabla X, entonces la clave foránea será el id 7 que se correlaciona con mi rut de la tabla Y, y está será la clave foránea de la tabla X. Entonces el id 1 se relaciona con el id 7
Relación 1:N
- La tabla X tiene múltimples relaciones con la tabla Y.
- Si en la tabla X hay empresas y la tabla Y son emplaeados, entonces varios empleados se relacionan a una categoriá de la clave X.
Relación N:M
- Se relaciona de múltimplas maneras desde la tabla X a la tabla Y.
- suele ocuparse una tabla intermedia para registrar los datos que sea capaz de establecer relaciones.
Autoreferencia
- relación dentro de una misma tabla

Creación de tablas relacionadas:
- TABLAS 1:1
- TABLAS 1:N
- TABLAS N:M

Consulta de datos relacioneles:
- INNER JOIN:
Comando que nos sirve para obrtener datos comunes de diferentes tablas. Nos retorna filas de tablas cuando hay coincidencia en estas. Se queda con datos comunes, recordar.
- LEFT JOIN:
Se trae los datos de la izquierda, los comunes, pero no los de la derecha. Siempre se usan las mismas relaciones.
- RIGHT JOIN:
Lo mismo que antes pero a la derecha
- FULL JOIN:
En MySQL el concepto existe pero solo con tres tablas o más
- UNION:
Este sí nos ayuda para unir dos tablas pero las tablas deben tener relacion entre ellas. Es suceptible de traer varios datos.

28 DE SEPTIEMBRE:

Introducción a conceptos avanzados;
INDEX:

indexar la tabla para consultar la tabla para encontrar rápidamente la info sin buscar por todas partes, para que mejore el rendimineto, acerlerar ala búsqueda de registros. Encontramos:

Índices Primarios: vinculados con la c alve primaria de la clave. Primary Index
ïndices Únicos: Asegura que dos filas de la tabla no tenga valores duplicasdos. Unique Index
Índices Compuiestos: donde hay dos o más columnas.

El crear índice hae que la tabla pese más. Esto podría significar que en algún caso sea ineficiente. 
Cuando hacemos una consulta se nos desvuelva más rápido pero por el contrario, cuando escribamos datos en en esa tabla, esa escritura va a ser más lenta, porque entras . O sea, más rápido en lectura, más lento en escritura

TRIGGER:
Instrucciones que se ejecutan automaticamente cuando ocurren eventeos en la tabla, no son consultas que ejectuemos. Como ocupar una tabla en contcreto

VIEWS:
Representación virtual de una o más tablas, o sea es el resultado de una consulta y como se vería en formato tabla

STORAGE PROCEDURE (Procedimiento almacenado):
Una Query que guardamos en favoritos.

TRANSACCIONES:
es una ejecución en bloque, y que solo se ejecute en el caso de que la ejecución sea efectiva cuando nosotros consideremos que esté bien hecha. 

CONCURRENCIA:
QUe paso cuando varios usuarios hacen o intentan hacer lo mismo en la base de datos. La idea es bloquear si hay dos que están haciendo lo mismo a la vez, o sea se bloquea la tabla o fila, etc. para evitar inconsistencias. la usa el administrador de base de daos en donde elige como funciona su DB, su motor.

CONEXIONES DESDE CÓDIGO:
Como conectarse desde Python, por ejemplo. Peor puede ser de JAVA, de JS, de PHP, etc. Es cuando se monta un Backend con estos lenguajes y me quiero conectar a la base de datos y llevarlos al Frontend,

CONNECTORS:
No se trata del ver el código por que depende del BACKEND. 


Para PostgreSQl, VERCEL es gratuito o tiene tier gratuito para la nube
Para MySQL está PlanetScale y CleverCLoud

02 DE OCTUBRE

SUBQUERY
Dentro de una query se pueden tener 16 subconsultas.

Próximos pasos:
- Diseño de base de datos.
- QUé motor elegir para esa base de datos.
- Concurrencias y Transacciones, estudiar*