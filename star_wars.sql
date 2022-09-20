DROP TABLE lightsabers;
DROP TABLE characters;


CREATE TABLE characters (                   
    id SERIAL PRIMARY KEY,
    name VARCHAR(255),
    darkside BOOLEAN,
    age INT
);

CREATE TABLE lightsabers (
    id SERIAL PRIMARY KEY,
    hilt_metal VARCHAR(255) NOT NULL,
    character_id INT REFERENCES characters(id), --DEFINE the relationship (foreign key)
    colour VARCHAR(255) NOT NULL
);

INSERT INTO characters(name, darkside, age) VALUES ('Obi-Wan Kanobi', false, 27);
INSERT INTO characters(name, darkside, age) VALUES ('Anakin Skywalker', false, 19);
INSERT INTO characters(name, darkside, age) VALUES ('Darth Vader', true, 32);
INSERT INTO characters(name, darkside) VALUES('Yoda', false);
INSERT INTO characters(name, darkside, age) VALUES('Luke Skywalker', false, 17);

UPDATE characters SET darkside = true WHERE name = 'Anakin Skywalker';
UPDATE characters SET (name, darkside) = ('Darth Vader', true) WHERE name = 'Anakin Skywalker';
UPDATE characters SET age = 65 WHERE name = 'Obi-Wan Kanobi';

DELETE FROM characters WHERE name = 'Yoda';

INSERT INTO characters(name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters(name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters(name, darkside, age) VALUES ('Stormtrooper', true, 25);
INSERT INTO characters(name, darkside, age) VALUES ('Stormtrooper', true, 25);

DELETE FROM characters WHERE ID = 9;

UPDATE characters SET age = 29 WHERE id = 7;

-- SELECT COUNT(age) FROM characters;

INSERT INTO lightsabers (colour, character_id, hilt_metal) VALUES ('green', 2, 'palladium');
INSERT INTO lightsabers (colour, character_id, hilt_metal) VALUES ('red', 3, 'gold');
INSERT INTO lightsabers (colour, character_id, hilt_metal) VALUES ('yellow', 2, 'silver');



SELECT * FROM characters;
SELECT * FROM lightsabers;

-- linked two tables together by linking them togther by making use of the characetr id.

