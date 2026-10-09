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
- git init
- -m (message)
- -a (all): sirve para hacer add . en archivos que ya han sido agregados, pero más de uno, si es olo un archivo hay que hacer add ., pero el -a sirve para agregar todos

*Para saber si estoy dentro de un repo

git rev-parse --is-inside-work-tree --> si devuelve 'true' porque estoy dentro del repo

BASH
- 01 ls
- 02 ls -a muestra archivos ocultos
- 02 ls -la muestra archivos oculto pero con detalles
- 03 cd
- 04 cd ..   la diferencia radica en qu hay un espacio después de cd
- 05 pwd
- 06 mkdir para crear fichero
- 07 clear
- 08 git config --global
- 09 git config --global --list 
- 10 touch  -> para crear archivo
- git init
- -m (message)
- -a (all): sirve para hacer add . en archivos que ya han sido agregados, pero más de uno, si es olo un archivo hay que hacer add ., pero el -a sirve para agregar todos

