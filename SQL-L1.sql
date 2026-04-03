#Create a database
CREATE DATABASE University;
#Use that database
USE University;

#Create a table name student and add values
CREATE TABLE student (
id INT PRIMARY KEY,
name VARCHAR (50),
CGPA DECIMAL (3,2),
dept VARCHAR (50)
);
INSERT INTO student (id, name, CGPA, dept)
VALUES
(101, 'adam', 3.50, 'cse'),
(102, 'bob', 2.91, 'eee'),
(103, 'casey', 3.59, 'ipe');

#show the entire table
SELECT * FROM student;
