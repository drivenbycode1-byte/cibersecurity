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
- 16 git chekout --> cambia de branch, revierte el archivo o  recupera un archivo en específico si ponemos su código.
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

- 21 touch .gitignore -> es como crear una carpeta de archivo oculto, y dentro de este archivo oculto estarán los ficheros añadidos ignorados que no entrarán en repository y dentro de este archi ponemos **/.(nombre del fichero)

BASH
- 02 ls -a muestra archivos ocultos
- ls -l -> muestra lista con detalles como códigps d cración fecha, hora, etc.
- ls -lh --> además de lo anterior, muestra el peso de los archivos totales
*Cabe recordar que en Bash para entrar a carpetas que tienen un espacio se debe poner \ por que sino Bash cree que es un comando
- 04 cd ..   la diferencia radica en qu hay un espacio después de cd
- 10 touch  -> para crear archivo
