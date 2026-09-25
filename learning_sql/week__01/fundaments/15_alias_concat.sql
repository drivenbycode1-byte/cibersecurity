SELECT name, init_date AS 'fecha de inicio en programación' FROM users WHERE age BETWEEN 20 AND 40

SELECT name, init_date AS 'fecha de inicio en programación' FROM users WHERE name = 'Diego'

SELECT CONCAT(name, surname) FROM users;

SELECT CONCAT(name, ' ', surname) FROM users;

SELECT CONCAT('Nombre: ', name, ', ', 'Apellido: ', surname) FROM users;

SELECT CONCAT('Nombre: ', name, ', ', 'Apellido: ', surname) AS 'Nombre Completo' FROM users;