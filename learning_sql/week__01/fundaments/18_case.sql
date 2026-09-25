SELECT *,
CASE
	WHEN age >= 36 THEN 'El mayor que los demás'
    ELSE 'Es menor'
END AS agetext
FROM users;

SELECT *,
CASE
	WHEN age >= 36 THEN 'El mayor que los demás'
    ELSE 'Es menor'
END AS '¿Es mayor o menor?'
FROM users;

SELECT *,
CASE
	WHEN age >= 36 THEN True
    ELSE false
END AS '¿Es mayor o menor?'
FROM users;

SELECT *,
CASE
	WHEN age < 36 THEN 'Es mayor que los demás'
    WHEN age = 75 THEN '¡Lo lograste!'
    ELSE 'Es menor'
END AS '¿Es mayor o menor?'
FROM users;