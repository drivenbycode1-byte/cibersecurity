--índice primario
CREATE INDEX idx_name ON users(name);

-- índice único
CREATE UNIQUE INDEX idx_name ON users(name);

-- índice compuesto
CREATE UNIQUE INDEX idx_name_surname ON users(name, surname);

-- eliminación  
DROP INDEX idx_name ON users