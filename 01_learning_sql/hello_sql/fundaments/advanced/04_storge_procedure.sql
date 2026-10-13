delimiter //
CREATE PROCEDURE p_all_users()
BEGIN
	SELECT * FROM users;
END//

-- PAra ejecutar al procedimineto almacendado
CALL p_all_users

-- Esto ya es parecido a una función
delimiter //
CREATE PROCEDURE p_age_users(IN age int)
BEGIN
	SELECT * FROM users WHERE age = age;
END//


-- PAra ejecutar al procedimineto almacendado
CALL p_age_users

--
delimiter //
CREATE PROCEDURE p_age_users_2(IN age_param int)
BEGIN
	SELECT * FROM users WHERE age = age_param;
END//

-- 3
CALL p_age_users_2(35)