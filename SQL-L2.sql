CREATE DATABASE college;
USE college;

CREATE TABLE student (
rollno INT PRIMARY KEY,
name VARCHAR (50),
marks INT NOT NULL,
grade VARCHAR (10),
city VARCHAR (50)
);

INSERT INTO student (rollno, name, marks, grade, city)
VALUES
(101,'anik',78,'c', 'pubna'),
(102,'bashar',93,'a', 'manikganj'),
(103,'chetan',85,'b', 'manikganj'),
(104,'dhruva',96,'a', 'dhaka'),
(105,'enam',12,'f', 'dhaka'),
(106,'faruk',82,'b', 'dhaka');

#to show full table
SELECT * FROM student;

#show city from the table
SELECT city FROM student;

#remove duplicate values from city
SELECT DISTINCT city FROM student;

#WHERE CLAUSE
#find who got more then 80
SELECT * FROM student
WHERE marks > 80;

#Find those who lives in manikganj and got more then 80
SELECT * FROM student 
WHERE marks >80 AND city ='manikganj';

#add 10 marks extra to all student and find who got more then 100
SELECT * FROM student 
WHERE marks + 10 > 100;

# Find who got 93 marks
SELECT * FROM student
WHERE marks =93;

#who got more then 93 
SELECT * FROM student 
WHERE marks > 93;

#OPERATORE- 
#AND: both condition have to be true
SELECT * FROM student 
WHERE marks >90 AND city ="manikganj";

#OR: any of the condition can ben true
SELECT * FROM student 
WHERE marks > 90 OR city = 'manikganj';

#BETWEEN: select for given range
SELECT * FROM student
WHERE marks BETWEEN 80 AND 90;

#IN: matches any values in the list
SELECT * FROM student 
WHERE CITY IN ('dhaka', 'manikganj');

#NOT IN: to neglate the given condition
SELECT * FROM student 
WHERE city NOT IN ('dhaka','manikganj');