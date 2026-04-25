#Join- join is used to combained rows from two or more tables, based on their related column between them.
#Types of joins
#1. INNER JOIN- returns recordes that have matching values in both tables

USE college;
CREATE TABLE student1(
id INT PRIMARY KEY,
name VARCHAR (50)
);

INSERT INTO student1 ( id, name)
VALUES
(101, 'adam'),
(102, 'bob'),
(103, 'casey');

SELECT * FROM student1;

CREATE TABLE course (
id INT PRIMARY KEY,
course VARCHAR(50)
 );

INSERT INTO course (id, course)
VALUES 
(102, 'ENGLISH'),
(103, 'ARABIC'),
(104, 'FRANCH'),
(105, 'HIBRU');

SELECT * FROM course;

SELECT * FROM student1 as tabA
INNER JOIN course as tabB
ON tabA.id = tabB.id;

#left join - return all records from the left table, amd match records from right table
SELECT * FROM student1 as tabA
LEFT JOIN course as tabB
on tabA.id = tabB.id;

#RIGHT JOIN- return all records from the right table, and match records from left table
SELECT * 
FROM student1 AS tabA
RIGHT JOIN course AS tabB
ON tabA.id = tabB.id;

#2.Full outer join- returns all records from both tables, matching rows where possible, and NULL where there is no match.
#LEFT JOIN -- UNION -- RIGHT JOIN

SELECT * 
FROM student1 AS tabA
LEFT JOIN course AS tabB
ON tabA.id = tabB.id

UNION

SELECT * 
FROM student1 AS tabA
RIGHT JOIN course AS tabB
ON tabA.id = tabB.id;



#3. Exclusive join/ Anti join
#Left exclusive join

SELECT * 
FROM student1 as tabA
LEFT JOIN course as tabB
ON tabA.id = tabB.id
WHERE tabB.id IS NULL;#Show table A but where table b match its show null

#Right exclusive join
SELECT * 
FROM student1 as tabA
RIGHT JOIN course as tabB
ON tabA.id = tabB.id
WHERE tabA.id is NULL;

#Full exclusive join = (A ∪ B) − (A ∩ B)
SELECT *
FROM student1 as taba
LEFT JOIN course as tabb
on taba.id = tabb.id
WHERE tabb.id is null

UNION 

SELECT *
FROM student1 as taba
RIGHT JOIN course as tabb
on taba.id = tabb.id
WHERE taba.id is null;

#Self join- a regular join  but the table is joined with self
CREATE TABLE emp_manager (
id INT PRIMARY KEY,
name VARCHAR(50),
manager_id INT 
);

INSERT INTO emp_manager (id, name, manager_id)
VALUES
(101,'adam',103),
(102,'bob',104),
(103,'casey',null),
(104,'donald',103);

SELECT * FROM emp_manager;

SELECT * FROM emp_manager AS A
JOIN emp_manager AS B 
ON A.id = B.manager_id;

SELECT A.name AS manager_name, B.name
FROM emp_manager AS A
JOIN emp_manager AS B 
ON A.id = B.manager_id;

#Unique
SELECT NAME FROM  emp_manager 
UNION
SELECT NAME FROM  emp_manager;

#Unique
SELECT NAME FROM  emp_manager 
UNION ALL
SELECT NAME FROM  emp_manager;