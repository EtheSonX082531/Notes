CREATE DATABASE College;
USE College;

CREATE DATABASE XYZ;
USE XYZ;
CREATE TABLE employee_Info(
  id INT PRIMARY KEY,
  name VARCHAR(50),
  salary INT NOT NULL
);

INSERT INTO employee_Info (id,name,salary) VALUES
(1,"Adam",25000),
(2,"Bob",30000),
(3,"Anik",50000);

SHOW TABLES;

SELECT * FROM employee_Info;

CREATE TABLE city(
   id INT PRIMARY KEY,
   name VARCHAR(20),
   age INT CONSTRAINT age_check CHECK (age>=200)
);

INSERT INTO city(id,name,age) VALUES
(1,"Sylhet",300),
(2,"Barishal",400),
(3,"Dhaka",500),
(4,"Rajshahi",250);

SELECT * FROM city;


CREATE TABLE student(
   rollno INT PRIMARY KEY,
   name VARCHAR(50),
   marks INT NOT NULL,
   grade VARCHAR(1),
   city VARCHAR(20)
);

INSERT INTO student (rollno,name,marks,grade,city) 
VALUES 
(101,"Nilanjana Chowdhury Puja",93,"A","Dhaka"),
(102,"Anik Roy",78,"C","Sylhet"),
(103,"Prianto CH Dey",85,"B","Dhaka"),
(104,"Proma Chowdhury",82,"B","Dhaka"),
(105,"Dhiraj Dhar Dip",12,"F","Rajshahi");

SELECT * FROM student;
SELECT name,marks FROM student;
SELECT DISTINCT city FROM student; 
SELECT * FROM student WHERE (marks>=80);
SELECT * FROM student WHERE (marks>=80 AND city="Dhaka");
SELECT * FROM student WHERE (city="Sylhet" OR marks<=80);
SELECT * FROM student WHERE marks BETWEEN 80 AND 90;
SELECT * FROM student WHERE marks>=80 AND marks<=90;
SELECT * FROM student WHERE city IN("Rajshahi","Sylhet");
SELECT * FROM student WHERE city NOT IN("Rajshahi","Sylhet");
SELECT * FROM student LIMIT 3; 
SELECT * FROM student WHERE (city="Dhaka") LIMIT 2;
SELECT * FROM student ORDER BY marks DESC;
SELECT MAX(marks) FROM student;
SELECT COUNT(name) FROM student;
SELECT AVG(marks) FROM student;
SELECT city,COUNT(name) FROM student GROUP BY city;
SELECT city,AVG(marks) FROM student GROUP BY city;
SELECT city,AVG(marks) FROM student GROUP BY city ORDER BY AVG(marks) ASC;
SELECT grade,COUNT(grade) FROM student GROUP BY grade ORDER BY grade ASC;
SELECT COUNT(name),city FROM student GROUP BY city HAVING MAX(marks)>=80;

SELECT city,COUNT(name) FROM student WHERE grade="A" GROUP BY city HAVING MAX(marks)>90 ORDER BY city ASC;

SET SQL_SAFE_UPDATES=0;
UPDATE student SET grade="P" WHERE grade="F";
SET SQL_SAFE_UPDATES=1;
SELECT * FROM student;

INSERT INTO student VALUES
("106","Ayon Roy",2,"F","Sylhet");

DELETE FROM student WHERE marks<10;

CREATE TABLE dept(
  id INT PRIMARY KEY,
  name VARCHAR(50)
  );
  
CREATE TABLE teacher(
    id INT PRIMARY KEY,
    name VARCHAR(50),
    dept_id INT,
    FOREIGN KEY (dept_id) REFERENCES dept(id)
    ON UPDATE CASCADE
    ON DELETE CASCADE
    );
    
    
INSERT INTO dept (id,name) VALUES 
(101,"English"),
(102,"Math"),
(103,"Biology"),
(104,"Bangla");

SELECT * FROM dept;


INSERT INTO teacher(id,name,dept_id) VALUES 
(1,"Puja CHowdhury",101),
(2,"Anik roy",102),
(3,"Dhiraj dhar dip",103);

SELECT * FROM teacher;

UPDATE dept SET id=110 WHERE id=102;
