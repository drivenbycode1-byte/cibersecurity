-- ============================================
-- GIT - GITHUB
-- Autor: Diego Silva
-- Fecha: 2024-10-02
-- ============================================

Este repositorio contiene fundamentos y mis prácticas de GIT y aprendizaje de GTHUB como parte de mi ruta hacia ciberseguridad y análisis de datos.

02 DE OCTUBRE

GIT
Sistema de control de versiones: Un sistema que nos permite llevar un historial de cambios de un proyecto y documentarlos para saber cuál ha sido el seguimiento. Nos sirve para regresar de ser necesario.
Linus Torvalds reador de Git y Kernel de Linux.
Para poder ir moviéndonos en los fiachear tenemos diferentes comandos, para ello podemos comenzar dándole instrucciones básicas como:
- 01 ls (list): que nos muestra el nombre de los ficheros que tenemos en la carpeta seleccionada.
- 02 ls -force --> muestra los archivos ocultos en los directios
- 03 cd (change directory): para seleccionar el directorio espewcificado en la ruta no seleccionada
- 04 cd.. :para regresar a la ruta anterior
- 05 pwd
- 06 mkdir (make directory): se realiza una carpeta  archivo entre comillas dobles = mkdir "Hola"
- 07 clear: limpiar consola
- 08 git config --global: base para usar entorno y aplicar configuracíon
- 09 git config --global --list: muestra usuario y mail
el --config se llama [scope] y después de este viene la [acción], entonces es así. Pedimos a git [scope] [acción]
- 10 new-item -> para crear archivo
- 11 git init
- 12 -m (message)
- 13 -a (all): sirve para hacer add . en archivos que ya han sido agregados, pero más de uno, si es olo un archivo hay que hacer add ., pero el -a sirve para agregar todosgit log --g

*Para saber si estoy dentro de un repo

git rev-parse --is-inside-work-tree --> si devuelve 'true' porque estoy dentro del repo

- 14 git push -f --> para borar otras ramas y dejar la local
- 15 git log --> nos muestra los repos y quien los hizo
- 16 git checkout --> cambia de branch, revierte el archivo o  recupera un archivo en específico si ponemos su código.
Podríamos también decir que git checkout nos sirve para movernos entre commit, mientras que el reset mueve el MAIN
- 17 git reset --> quita archivos del staging, no borra archivos reales
- git reset --hard --> git elimina archivos
- 18 git log --graph
- 19 git log --graph --pretty=oneline --> muestra la clave con solamente la información del commit
- 20 git log --graph --decorate --all --oneline
- git config --global alias.ejemplo "log --graph --decorate --all --oneline" -> Entonces ahora solo con poner git ejemplo se aplicará log --graph --decorate --all --oneline

Atención:
-m        → para opción corta (cuando usamos-)
--amend   → para opción larga (cuando usamos --)
--        → separa opciones de archivos

Cada vez que hacemos un commit, nos da un hash, o sea un identificador único para ese commit

IMPORTANTE:  Git trabaja con 3 zonas
Zona 1: Working Directory --> archivos como se ven en el pc (se edita, se borra y se crea aquí) 
Zona 2: Staging Area --> es la sala de preparación, cuando se usa el add, Git copia la versión del archivo actual en esta área par aincluirlo en el próximo commit
Zona 3: Repository --> los commits guardados, o sea, cuando se hace commit -m ""

- 21 touch .gitignore -> es como crear una carpeta de archivo oculto, y dentro de este archivo oculto estarán los ficheros añadidos ignorados que no entrarán en repository y dentro de este archvo ponemos **/.(nombre del fichero) NO debemos olvidar hacer add al .gitignore
- 22 git diff --> ver qué cambio sin estar revisando los commit, es para revisar antes de hacer add

Podemos ir viajando entre diferentes partes del branch que aparecen cuando hacemos el log y vemos los hash. 
Siempre fijarnos en donde esta el HEAD para saber en qué parte del branch estamos.
Recordar que el MAIN es el final de la rama.

- 23 git reset --hard
Si lo usamos con un hash en específico lo que hacemos es mover el MAIN
borra todos los cambios locales que no esten en el commit al que estamos reseteando y limpia el staging area (o sea, todo lo que hicimos con add).

- git revert --> eliminia un commit concreto y crea uno nuevo, no elimmina historial

- 24 git reflog --> historial completo de interacciones. Con los hash borrados después de un reset, incluso después de eso puede ser recuperado el hash
- 25 git tag --> se suelen usar para etiquetar commit
Si solo ponemos git tag nos mostrará los tag que tenemos guardados en el log
para movernos entre tags usamos el comandos checkout git checkout tags/clase_1

- 26 git branch
- 27 git switch
- 28 git merge
Cuidado cuando dos branch tocan la líneas de códigos del mismo fichero porque genera un conflicto de contenido.

- 30 git stash --> almacenaje temporal mientras cambiamos de branch
Se puede usar git stash list par que te diga si hay o no algo pendiente
para traer lo que tenía guardado hay que suar "git stash pop"
Para eliminar un stash que no me sirve soolo hago "git stash drop"

- 31 git branch -d
Eliminar ramas para cuando ya se ha conseguido el objetivo. Recordar que las ramas son trabajos temporales.
Todos las ramas estarán, los commit, etc, así que se pueden recuperar, siempre.

- Auntenticación con SSH
SSH (Secure Shell)
- 32 ls -al ~/.ssh --> para saber si hay claves ssh, si no hay hay que generarlas.
- 33 eval "$(ssh-agent -s)" --> esto nos muestra si tenemos y cual es el id
- 34 ssh-keygen -t ed25519 -C "xxxx@x.com"
Abrimos el archivo config y copiamos
Host *.github.com
  AddKeysToAgent yes
  IdentityFile ~/.ssh/id_****(nombre archivo que termina en pub)
  IdentitiesOnly yes

Recordar que ed25519 (criptografía e curva elíptica) y rsa(criptografía asimétrica) son tipos de son algoritmos de criptografía. Hoy, rsa está en desuso por ser más vulnerable y pesada
GEneramos clave SSH con lo que se creará los archivos ssh y pub para anexarla a github y hacer un New SSH key

- 35 ssh -T git@github.com --> Comprobamos si todo está bien
- 36 git remote

BASH
- 02 ls -a muestra archivos ocultos
- ls -l -> muestra lista con detalles como códigps d cración fecha, hora, etc.
- ls -lh --> además de lo anterior, muestra el peso de los archivos totales
*Cabe recordar que en Bash para entrar a carpetas que tienen un espacio se debe poner \ por que sino Bash cree que es un comando
- 04 cd ..   la diferencia radica en qu hay un espacio después de cd
- 10 touch  -> para crear archivo
