
--CREATE DATABASE db_zoo;--/




USE db_zoo;

CREATE TABLE tbl_animalias (
	animalia_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	animalia_type VARCHAR(30) NOT NULL
);

INSERT INTO tbl_animalia
	(animalia_type)
	VALUES
	('vertebrate'),
	('invertebrate')
;

SELECT * FROM tbl_animalia;

CREATE TABLE tbl_class (
	class_id INT PRIMARY KEY NOT NULL IDENTITY (100,1),
	class_type VARCHAR(50) NOT NULL
);

INSERT INTO tbl_class
	(class_type)
	VALUES
	('bird'),
	('reptilian'),
	('mammal'),
	('arthropod'),
	('fish'),
	('worm'),
	('chidaria'),
	('echinoderm')
;

SELECT * FROM tbl_class;

UPDATE tbl_class SET class_type = 'birds' WHERE class_type = 'bird';

SELECT REPLACE(class_type, 'bird', 'birds') FROM tbl_class;

SELECT class_type FROM tbl_class WHERE class_type = 'bird';

SELECT UPPER(class_type) FROM tbl_class WHERE class_type = 'bird';

SELECT COUNT(class_type) FROM tbl_class WHERE class_type = 'bird';

CREATE TABLE tbl_persons (
	persons_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	persons_fname VARCHAR(50) NOT NULL,
	persons_1name VARCHAR(50) NOT NULL,
	persons_contact VARCHAR(50) NOT NULL
);

INSERT INTO tbl_persons
	(persons_fname, persons_1name, persons_contact)
	VALUES
	('bob', 'smith', '232-345-5768'),
	('mary', 'ann', '232-345-5768'),
	('tex', 'burns', '232-345-5768'),
	('gerry', 'kerns', '232-345-5768'),
	('sally', 'fields', '232-345-5768')
;

SELECT persons_fname, persons_1name, persons_contact FROM tbl_persons WHERE persons_id BETWEEN 2 AND 5;
SELECT persons_fname, persons_1name, persons_contact FROM tbl_persons WHERE persons_1name LIKE 'ke%';



SELECT persons_fname, persons_1name, persons_contact FROM tbl_persons WHERE persons_1name LIKE '_u%5';

UPDATE tbl_persons SET persons_fname = 'mars' WHERE persons_fname = 'bob';

SELECT persons_fname, persons_1name, persons_contact FROM tbl_persons WHERE persons_fname LIKE 'm%' ORDER BY persons_1name;

SELECT persons_fname AS 'First Name', persons_1name AS 'Last Name', persons_contact AS 'Phone:'
	FROM tbl_persons WHERE persons_fname LIKE 'm%' ORDER BY persons_1name;

DELETE FROM tbl_persons WHERE persons_1name = 'smith';

DROP TABLE tbl_persons;

CREATE TABLE tbl_order (
	order_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	order_type VARCHAR(50) NOT NULL
);

CREATE TABLE tbl_care (
	care_id VARCHAR(50) PRIMARY KEY NOT NULL,
	care_type VARCHAR(50) NOT NULL,
	care_specialist INT NOT NULL
);

CREATE TABLE tbl_nutrition (
	nutrition_id INT PRIMARY KEY NOT NULL IDENTITY (2200, 1),
	nutrition_type VARCHAR(50) NOT NULL,
	nutrition_cost MONEY NOT NULL
);

CREATE TABLE tbl_habitat (
	habitat_id INT PRIMARY KEY NOT NULL IDENTITY (5000,1),
	habitat_type VARCHAR(50) NOT NULL,
	habitat_cost MONEY NOT NULL
);

CREATE TABLE tbl_specialist (
	specialist_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	specialist_fname VARCHAR(50) NOT NULL,
	specialist_1name VARCHAR(50) NOT NULL,
	specialist_contact VARCHAR(50) NOT NULL
)

INSERT INTO tbl_order
	(order_type)
	VALUES
	('carnivore'),
	('herbivore'),
	('omnivore')
;
SELECT * FROM tbl_order;

INSERT INTO tbl_care
	(care_id, care_type, care_specialist)
	VALUES
	('care_0', 'replace the straw', 1),
	('care_1', 'repair or replace broken toys', 4),
	('care_2', 'bottle feed vitamins', 1),
	('care_3', 'human contact_pet subject', 2),
	('care_4', 'clean up animal waste', 1),
	('care_5', 'move subject to exercise pen', 3),
	('care_6', 'drain and refill aquarium', 1),
	('care_7', 'extensive dental work', 3)
;
SELECT * FROM tbl_care;



INSERT INTO tbl_nutrition
	(nutrition_type, nutrition_cost)
	VALUES
	('raw fish', 1500),
	('living rodents', 600),
	('mixture of fruit and rice', 800),
	('warm bottle of milk', 600),
	('syringe fed broth', 600),
	('lard and seed mix', 300),
	('aphids', 150),
	('vitamins and marrow', 3500)
;
SELECT * FROM tbl_nutrition;

INSERT INTO tbl_habitat
	(habitat_type, habitat_cost)
	VALUES
	('tundra', 40000),
	('grassy knoll with trees', 12000),
	('10 ft pond and rocks', 30000),
	('icy aquarium with snowy facade', 50000),
	('short grass, shade and moat', 50000),
	('netted forest atrium', 10000),
	('jungle vines and winding branches', 15000),
	('cliff with shaded cave', 15000)
;
SELECT * FROM tbl_habitat;

INSERT INTO tbl_specialist
	(specialist_fname, specialist_1name, specialist_contact)
	VALUES
	('margaret', 'nguyen', '384-576-2899'),
	('mary', 'fischer', '384-784-4856'),
	('arnold', 'holden', '385-475-3944'),
	('kem', 'byesan', '384-485-4855'),
	('delmonte', 'fyedo', '768-288-3749')
;
SELECT * FROM tbl_specialist;


