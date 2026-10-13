-- relación 1:1

CREATE TABLE dni (
dni_id int AUTO_INCREMENT PRIMARY KEY,
dni_number int NOT NULL,
user_id int,
UNIQUE(dni_id),
FOREIGN KEY(user_id) REFERENCES users(user_id)
);

CREATE TABLE companies (
company_id int AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL
);

-- 1:n

CREATE TABLE companies (
company_id int AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL
);

ALTER TABLE users
add company_id varchar(100);

--

ALTER TABLE users 
ADD CONSTRAINT fk_companies
FOREIGN KEY (company_id)
REFERENCES companies(company_id);

-- N:M creamos tercera tabla, pero antes creamos la tabla lenguaje
-- Despu'rs la tabla lenguaje la vamos a relacionar con usuarios

CREATE TABLE languages (
language_id int AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL
);

-- tabla intermaedia con el usuario de cada tabla que queremos relacionar
-- y dos claves foráneas

CREATE TABLE users_languages (
users_language_id int AUTO_INCREMENT PRIMARY KEY,
user_id int,
language_id int,
FOREIGN KEY(user_id) REFERENCES users(user_id),
FOREIGN KEY(language_id) REFERENCES languages(language_id),
UNIQUE (USER_ID, LANGUAGE_ID)
);

-- AUTOREFERENCIA: Creamos un nuevo campo para identificar
-- a una clave foránea a la misma clave primariadentro de la tablka

-- INSERT

INSERT INTO dni (dni_number, user_id) VALUES (17171717,1)
INSERT INTO dni (dni_number, user_id) VALUES (22122122,2)
INSERT INTO dni (dni_number, user_id) VALUES (12313457,3)
INSERT INTO dni (dni_number) VALUES (87654321)

INSERT INTO companies (name) VALUES ('MoureDe;v');
INSERT INTO companies (name) VALUES ('Apple');
INSERT INTO companies (name) VALUES ('Google');

UPDATE users SET company_id = 1 WHERE user_id = 1;
UPDATE users SET company_id = 2 WHERE user_id = 3;
UPDATE users SET company_id = 3 WHERE user_id = 4;
UPDATE users SET company_id = 1 WHERE user_id = 7;

INSERT INTO languages (name) VALUES ('Swift');
INSERT INTO languages (name) VALUES ('Kotlin');
INSERT INTO languages (name) VALUES ('JavaScript');
INSERT INTO languages (name) VALUES ('Java');
INSERT INTO languages (name) VALUES ('Python');
INSERT INTO languages (name) VALUES ('C#');
INSERT INTO languages (name) VALUES ('COBOL');

INSERT INTO users_languages (user_id, language_id) VALUES (1, 1);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 2);
INSERT INTO users_languages (user_id, language_id) VALUES (1, 5);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 3);
INSERT INTO users_languages (user_id, language_id) VALUES (2, 5);

