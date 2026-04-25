#Sub-Query
#using student table from SQL-L2

SELECT * FROM student;

#Question -- get names from all students who scored more then class average.alter
#step1- Find the average of class
#step2- Find the names of students with marks>avg.

#step-1
SELECT AVG (marks)
FROM student;

#step2- using subqueries
SELECT name, marks
FROM student 
WHERE  marks > (SELECT AVG (marks)
FROM student);

#Q - Find the name of all students with even roll numbers
#s1- find the even roll number
#s2- find the name of students with even roll no

SELECT rollno
FROM student
WHERE rollno % 2 = 0;

SELECT rollno
FROM student 
WHERE rollno IN (
SELECT rollno
FROM student
WHERE rollno % 2 = 0);

#Q-Find the max marks from the student of Dhaka
SELECT MAX(marks)
FROM (
SELECT * FROM student WHERE city = "dhaka") as temp;

#Without sub queries
SELECT MAX(marks)
FROM student
WHERE city = "dhaka";

#Sub-queries with select:
SELECT (SELECT MAX(marks) FROM student), name
FROM student;

#MySql VIEWS
CREATE VIEW view1 AS
SELECT rollno, name, marks FROM student;

SELECT rollno, name, marks
FROM student
WHERE marks > 90;

#Drop
DROP VIEW view1;
