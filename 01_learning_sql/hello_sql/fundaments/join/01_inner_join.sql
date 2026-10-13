-- 1:1

SELECT * FROM users INNER JOIN dni;

SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id;

SELECT * FROM users
INNER JOIN dni
ON users.user_id = dni.user_id
ORDER BY age DESC; 

SELECT name, dni_number FROM users
INNER JOIN dni
ON users.user_id = dni.user_id
ORDER BY age DESC; 

-- 1:N

SELECT  * FROM users
JOIN companies
ON users.company_id = companies.company_id;

SELECT companies.name, users.name FROM users
JOIN companies
ON users.company_id = companies.company_id;

-- N:M

SELECT users.name, languages.name
FROM users_languages
JOIN users ON users_languages.user_id = users.user_id
JOIN languages ON users_languages.language_id = languages.language_id;