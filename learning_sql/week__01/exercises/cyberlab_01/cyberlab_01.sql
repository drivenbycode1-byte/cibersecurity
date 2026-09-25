-- ============================================
-- PRACTICA SQL - CYBERLAB
-- Autor: Diego Silva
-- Fecha: 2024-09-25
-- ============================================

CREATE TABLE `devices` (
  `id_devices` int NOT NULL AUTO_INCREMENT,
  `user_id` varchar(45) NOT NULL,
  `device_name` varchar(45) NOT NULL,
  `type` varchar(45) NOT NULL,
  `active` varchar(45) NOT NULL,
  PRIMARY KEY (`id_devices`)
)

LOCK TABLES `devices` WRITE;

INSERT INTO `devices` VALUES (1,'1','Noob','Torre','yes'),(2,'2','expert','Linux','yes'),(3,'3','medium-expert','Notebook','no'),(4,'4','Noob','Windows XP','yes'),(5,'5','expert','Windows 27','no'),(6,'6','rookie','Linux','no');

UNLOCK TABLES;


CREATE TABLE `users` (
  `User` int NOT NULL AUTO_INCREMENT,
  `Name` varchar(45) NOT NULL,
  `Surname` varchar(45) DEFAULT NULL,
  `Age` int DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `E-mail` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`User`)
)

LOCK TABLES `users` WRITE;

INSERT INTO `users` VALUES (1,'Diego','Silva',35,'1990-12-07','diego@gmail.com'),(2,'Cloud','Strife',27,'1999-09-03','cloud@ff7.cl'),(3,'Tifa',NULL,26,'2000-03-03','tifa@ff7.cl'),(4,'Red XII','Perro',189,'1800-04-21','cloud@ff7.cl'),(5,'Nanaki','Perro',189,'1800-12-21','cloud@ff7.cl'),(6,'Barret','Chongo',41,'1985-04-08','barret@gmail.com');

UNLOCK TABLES;




-- ============================================
-- EJERCICIOS DE CONSULTAS
-- ============================================

-- ============================================
-- CONSULTAS DE PRACTICA
-- ============================================

SELECT * FROM users;

SELECT user_id, name FROM devices;

SELECT DISTINCT age FROM users;

SELECT * FROM users WHERE email = 'diego@gmail.com' AND surname LIKE 'S%';

SELECT DISTINCT age FROM users WHERE age = 35;

SELECT * FROM devices WHERE type LIKE '%Linux%';

SELECT name FROM users ORDER BY date DESC;

SELECT * FROM devices LIMIT 2;

