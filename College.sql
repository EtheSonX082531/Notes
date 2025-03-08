CREATE DATABASE College;
USE College;
CREATE TABLE student(
   rollno INT PRIMARY KEY,
   name VARCHAR(50),
   marks INT NOT NULL,
   grade VARCHAR(1),
   city VARCHAR(20)
);

INSERT INTO student(rollno,name,marks,grade,city) VALUES
    (101,"Anik",78,"C","Pune"),
    (102,"Mahan",93,"A","Mumbai"),
    (103,"Prianto",85,"B","Mumbai"),
    (104,"Mutahar",96,"A","Delhi"),
    (105,"Tamim",12,"F","Delhi"),
    (106,"Dhiraj",82,"B","Delhi");
    
SELECT * FROM student;    
SELECT name,rollno FROM student; 
SELECT DISTINCT city FROM student;
SELECT * FROM student WHERE (marks>80);
SELECT * FROM student WHERE (city = "Pune");
SELECT * FROM student WHERE (marks>80 AND city="Mumbai");
SELECT * FROM student WHERE (marks+10>=100);
SELECT * FROM student WHERE (grade!="C");
SELECT * FROM student WHERE (marks BETWEEN 80 AND 90);
SELECT * FROM student WHERE city IN ("Delhi","Pune");
SELECT * FROM student WHERE city NOT IN ("Delhi","Pune");

SELECT * FROM student LIMIT 3;
SELECT * FROM student WHERE(city="Delhi") LIMIT 2;
SELECT * FROM student ORDER BY city ASC;
SELECT * FROM student ORDER BY marks ASC;
SELECT * FROM student ORDER BY marks DESC LIMIT 3;

SELECT city,COUNT(name) FROM student GROUP BY city;
SELECT grade,COUNT(grade) FROM student GROUP BY grade;
SELECT city,COUNT(name) FROM student GROUP BY city HAVING MAX(marks)>90;

SELECT city FROM student WHERE(grade="A") GROUP BY city;

