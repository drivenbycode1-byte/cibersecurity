-- ejmplo de la tabla persons8, agregamos una nuevo campo con su longitud
-- ADD

ALTER TABLE persons8
ADD surname varchar(150)

-- RENAME COLUMN
ALTER TABLE persons8
RENAME COLUMN surname TO description

-- MODIFY COLUMN
ALTER TABLE persons8
MODIFY COLUMN description varchar(250);

-- ALTER TABLE persons8
ALTER TABLE persons8
DROP COLUMN description;