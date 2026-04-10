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

