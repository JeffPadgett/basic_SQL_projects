

CREATE TABLE tbl_persons (
	persons_id INT PRIMARY KEY NOT NULL IDENTITY (1,1),
	persons_fname VARCHAR(50) NOT NULL,
	persons_lname VARCHAR(50) NOT NULL,
	persons_contact VARCHAR(50) NOT NULL
);

INSERT INTO tbl_persons
(persons_fname, persons_lname, persons_contact)
	VALUES
	('bob','cletus','904-0323-5531'),
	('sarah','soulis','934-343-3223'),
	('harry','soulis','232-232-4442'),
	('jeffrey','padgett','433-334-5643'),
	('limp','bizkit','235-423-2552')
;

UPDATE tbl_persons SET persons_fname = 'testname' WHERE persons_fname = 'jeffrey';

SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons WHERE persons_lname like '_e%';

SELECT persons_fname, persons_lname, persons_contact FROM tbl_persons WHERE persons_lname LIKE 's%' ORDER BY persons_fname;

SELECT persons_fname AS 'First name', persons_lname AS 'Last name', persons_contact AS 'Phone:' FROM tbl_persons WHERE persons_fname LIKE 't%';

SELECT * FROM tbl_persons;