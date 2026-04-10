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

#LIMIT :set an upper limit on number of rows that values to be returned.
SELECT * FROM student
LIMIT 3;

SELECT * FROM student
WHERE marks > 80
LIMIT 3;

#ORDER BY 
SELECT * FROM student 
ORDER BY city;

SELECT * FROM student
ORDER BY marks DESC;

#show 1st 3 student
SELECT * FROM student
ORDER BY marks DESC
LIMIT 3;

#AGGREGATED FUNCTION - COUNT(), MAX(), MIN(), SUM(), AVG()
SELECT COUNT(city) FROM student;
SELECT MIN(marks)FROM student;
SELECT AVG(marks) FROM student;

#GROUP BY 
SELECT city 
FROM student
GROUP BY city;

SELECT city, COUNT(name)
FROM student
GROUP BY city;

SELECT city, name, COUNT(name)
FROM student 
GROUP BY city, name; 

SELECT city, AVG(marks)
FROM student
GROUP BY city;

SELECT city, AVG(marks)
FROM student
GROUP BY city
ORDER BY city ASC; 

SELECT city, AVG (marks) 
FROM student
GROUP BY city
ORDER BY AVG (marks)  DESC;

SELECT grade, COUNT(rollno) 
FROM student
GROUP BY grade 
ORDER BY grade;

#NEW TABLE FOR PRACTICE QUESTION
CREATE TABLE payment (
    customer_id INT PRIMARY KEY,
    customer VARCHAR(50),
    mode VARCHAR(20),
    city VARCHAR(50)
);

INSERT INTO payment (customer_id, customer, mode, city) VALUES
(101, 'Olivia Barrett', 'Netbanking', 'Portland'),
(102, 'Ethan Sinclair', 'Credit Card', 'Miami'),
(103, 'Maya Hernandez', 'Credit Card', 'Seattle'),
(104, 'Liam Donovan', 'Netbanking', 'Denver'),
(105, 'Sophia Nguyen', 'Credit Card', 'New Orleans'),
(106, 'Caleb Foster', 'Debit Card', 'Minneapolis'),
(107, 'Ava Patel', 'Debit Card', 'Phoenix'),
(108, 'Lucas Carter', 'Netbanking', 'Boston'),
(109, 'Isabella Martinez', 'Netbanking', 'Nashville'),
(110, 'Jackson Brooks', 'Credit Card', 'Boston');
SELECT * FROM payment;
#find the total payment according to each payment method

SELECT mode, COUNT(customer)
FROM payment
GROUP BY mode;

#HAVING- Use to filter the GROUP BY query based on aggregated function
#Using student table

SELECT COUNT(name), city
FROM student
GROUP BY city
HAVING MAX(marks) >90;

#General order
#1.SELECT columns_name
#2.FROM table_name
#3.WHERE condition on rows 
#4.GROUP BY columns_name
#5.HAVING condition on columns (which is in group by)
#6.ORDER BY columns_name ASC/ DESC; (Specific condition on colummn)
#[SELECT FROM WHERE ? GHO]

#EXAMPLE
SELECT city
FROM student
WHERE grade = 'A'
GROUP BY city 
HAVING MAX(marks) >=90
ORDER BY city DESC;