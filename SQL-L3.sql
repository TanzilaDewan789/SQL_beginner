USE college;

DROP TABLE IF EXISTS teachers_info;
DROP TABLE IF EXISTS dept;

CREATE TABLE dept(
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO dept (id, name)
VALUES
(101, 'science'),
(102, 'english'),
(103, 'bangla');

CREATE TABLE teachers_info(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  dept_id INT,
  FOREIGN KEY (dept_id) REFERENCES dept(id)
);

INSERT INTO teachers_info (id, name, dept_id)
VALUES
(101,'adam', 101),
(102,'bob', 103),
(103,'casey', 102),
(104,'donald', 102);

SELECT * FROM dept;
SELECT * FROM teachers_info;

#CASCADING FOREIGN KEY
#1.ON UPDATE CASCADE:
CREATE TABLE new_dept( 
  id INT PRIMARY KEY,
  name VARCHAR(50)
);

INSERT INTO new_dept (id, name)
 VALUES
(102, 'it'),
(200, 'arts');

CREATE TABLE new_teacher(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  course VARCHAR (50),
  dept_id INT,
  FOREIGN KEY (dept_id) REFERENCES new_dept(id)
  ON UPDATE CASCADE
  ON DELETE CASCADE
);
INSERT INTO new_teacher (id, name,course, dept_id)
 VALUES 
 (1, 'adam', 'it', 102), 
 (2, 'bob', 'arts', 200);

UPDATE new_dept
SET id = 103 , name ='geo'
WHERE id = 102 AND name= 'it';

SELECT * FROM new_dept;
SELECT * FROM  new_teacher ;

DELETE FROM new_dept WHERE id = 200;