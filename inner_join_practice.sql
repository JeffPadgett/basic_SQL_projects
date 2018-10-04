


CREATE TABLE my_employee ( Employee_id int, First_Name VARCHAR(20), Last_Name VARCHAR(20))

INSERT INTO my_employee VALUES (1, 'Michael', 'Scott')
INSERT INTO my_employee VALUES (2, 'Jeffrey', 'Padgett')
INSERT INTO my_employee VALUES (3, 'Brittany', 'Smith')

select * from my_employee;

CREATE TABLE my_salery ( Employee_id INT, Salary FLOAT)

INSERT INTO my_salery VALUES (1,10000)
INSERT INTO my_salery VALUES (2,8000)
INSERT INTO my_salery VALUES (3,11000)

SELECT * FROM my_salery;
SELECT * from my_employee;

SELECT et.First_Name, et.Last_Name, st.Salary
FROM my_employee et
INNER JOIN my_salery st ON et.employee_id = st.employee_id;

