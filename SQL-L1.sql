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

#1.Create a database & check if its exist or not (University_game)
#2.Show all the tables and all the databases
#3.DROP the database if exist

CREATE DATABASE IF NOT EXISTS University_game;
USE University_game;

CREATE TABLE team(
id INT PRIMARY KEY,
age INT NOT NULL,
interest VARCHAR (50)
);

INSERT INTO team(id, age, interest)
VALUES
(1, 18, 'FOOTBALL'),
(2, 17, 'RUGBY');

SELECT * FROM team;

SHOW DATABASES;
SHOW TABLES;
DROP DATABASE IF EXISTS University_game;

#Practice question
CREATE DATABASE XYZ;
USE XYZ;

CREATE TABLE employee(
id INT PRIMARY KEY,
name VARCHAR (50),
salary INT NOT NULL);

INSERT INTO employee (id, name, salary)
VALUES
(1,'Adam', 25000),
(2,'bob', 35000),
(3,'casey', 50000);

SELECT * FROM employee;

# keys - primary key & foreign key
CREATE TABLE city (
id INT PRIMARY KEY,
city_name VARCHAR (50));

INSERT INTO city (id, city_name)
VALUES
(1,'dhaka'),
(2,'shylet'),
(3,'manikganj');

SELECT * FROM city;

CREATE TABLE Stu_location(
id INT PRIMARY KEY,
name VARCHAR (50),
city_id INT,
FOREIGN KEY (city_id) REFERENCES city (id)
);

INSERT INTO Stu_location (id, name, city_id)
VALUES
(101,'A',1),
(102,'B',2),
(103,'C',3),
(104,'D',2);

SELECT * FROM Stu_location;

SELECT 
Stu_location.id,
Stu_location.name,
Stu_location.city_id,

city.city_name

FROM Stu_location JOIN city
ON Stu_location.city_id= city.id;



