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