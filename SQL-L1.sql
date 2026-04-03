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