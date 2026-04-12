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

#ALTER -
#1. ADD COLUMN 2.DROP COLUMN 3. REMANE TO 4. CHANGE COLUMN 5.MODIFY COLUMN 6.TRUNCATE


#ADD COLUMN- (to add new column in table)
ALTER TABLE student
ADD COLUMN age INT NOT NULL DEFAULT 19;

SELECT * FROM student;

#DROP COLUMN- ( to drop the full column)
ALTER TABLE student
DROP COLUMN age;

#REMANE TO-( change the table name)
ALTER TABLE student
RENAME TO new_stu;

ALTER TABLE new_stu
RENAME TO student;

#CHANGE COLUMN-(change the name of the column)
ALTER TABLE student
CHANGE COLUMN age new_age INT NOT NULL;

#MODIFY COLUMN - (change only datatype and constrain)
ALTER TABLE student
MODIFY COLUMN new_age FLOAT;

#TRUNCATE - Only showed the column name removed the table data
TRUNCATE TABLE student;

DROP TABLE student;

