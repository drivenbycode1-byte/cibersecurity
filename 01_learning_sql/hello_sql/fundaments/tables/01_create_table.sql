-- Tabla creada sin constraint, o sea, no me deja hacer modificaciones
CREATE TABLE persons (
id int,
name varchar(100),
age int,
email varchar(50),
created date
);

-- con la restricción NN que impide dejar la fila vacía
CREATE TABLE persons2 (
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(50),
created date
);

-- UN, deja campos únicos e irrepetibles
CREATE TABLE persons3 (
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(50),
created datetime,
UNIQUE(id)
);

-- PK nos dice cual es la fila principal
CREATE TABLE persons4 (
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(50),
created datetime,
UNIQUE (id),
PRIMARY KEY (id)
);

-- CHECK crea restrricción específica para criterios específicos
CREATE TABLE persons5 (
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(50),
created datetime,
UNIQUE(id),
PRIMARY KEY(id),
CHECK(age>=18)
);

-- Usamos DEFAULT para que tenga infomación básica predeterminada
CREATE TABLE persons6 (
id int NOT NULL,
name varchar(100) NOT NULL,
age int,
email varchar(50),
created datetime DEFAULT CURRENT_TIMESTAMP(),
UNIQUE(id),
PRIMARY KEY(id),
CHECK(age>=18)
);

-- AUTO INCREMENT
CREATE TABLE persons7 (
id int NOT NULL AUTO_INCREMENT,
name varchar(100) NOT NULL,
age int,
email varchar(50),
created datetime DEFAULT CURRENT_TIMESTAMP(),
UNIQUE(id),
PRIMARY KEY(id),
CHECK(age>=18)
);

CREATE TABLE persons4 (id int NOT NULL, name varchar(100) NOT NULL, age int, email varchar(50), created datetime, UNIQUE (id), PRIMARY KEY (id));