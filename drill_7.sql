
SELECT * FROM tbl_habitat;

SELECT species_name FROM tbl_species WHERE species_order = 3;

SELECT nutrition_type FROM tbl_nutrition WHERE nutrition_cost <= 600.00;

SELECT species_name
FROM tbl_species
WHERE species_nutrition BETWEEN 2202 AND 2206;

SELECT species_name AS 'Species Name:', nutrition_type AS 'Nutrition Type: '
FROM tbl_species t1
INNER JOIN tbl_nutrition t2 ON t2.nutrition_id = t1.species_nutrition


SELECT species_name, specialist_fname, specialist_lname, specialist_contact
FROM tbl_specialist
INNER JOIN tbl_care ON tbl_specialist.specialist_id = care_specialist
INNER JOIN tbl_species ON care_id = species_care
WHERE species_name = 'penguin';


CREATE TABLE person (
	person_id INT PRIMARY KEY NOT NULL IDENTITY(1,1),
	first_name VARCHAR(30) NOT NULL,
	last_name VARCHAR(30) NOT NULL,
);

CREATE TABLE contact (
	contact_id INT PRIMARY KEY NOT NULL IDENTITY(1,1), 
	person_id INT NOT NULL CONSTRAINT fk_person_id FOREIGN KEY REFERENCES person(person_id) ON UPDATE CASCADE ON DELETE CASCADE,
	street VARCHAR(100) NOT NULL,
	zipcode INT NOT NULL,
	phone_number VARCHAR(20) NOT NULL 
);

INSERT INTO person (first_name, last_name)
VALUES
('Henrey', 'Smith'),
('Cledus', 'Johns'),
('Maria', 'Carry');

INSERT INTO contact (person_id,street, zipcode, phone_number)
VALUES
(1,'123 Venus Ave', 32223, '932-334-4553'),
(2,'169 Mama House ST', 34423, '932-331-4923'),
(3,'632 Mars Ave', 32443, '935-798-7753');



SELECT first_name, last_name, phone_number
FROM person
INNER JOIN contact ON contact.person_id = person.person_id;

