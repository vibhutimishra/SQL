/*  
Data TYPES

INT
DECIMAL(M,N)
M total digits, N total digits after decimal

VARCHAR(l)
store strings

BLOB
to store binary DATA

DATE
TIMESTAMP

*/
-- creating TABLE
CREATE TABLE student_demo (
    student_id INT PRIMARY KEY,
    student_name VARCHAR(20) NOT NULL,
    major VARCHAR(20) DEFAULT "undecided"
);

-- describes student_demo schema
DESCRIBE student_demo;

-- shows data from table
Select * From student_demo;

--inserting values
INSERT INTO student_demo VALUES(1,"Jack","Biology");
INSERT INTO student_demo VALUES(2,"Kate","Sociology");
INSERT INTO student_demo(student_id,student_name) VALUES(3,"Claire");
INSERT INTO student_demo VALUES(4,"Mike","CS");

-- delete a table
DROP Table student_demo;


UPDATE student_demo
SET major = "Computer Science"
where major = "CS";

--delete a row
INSERT INTO student_demo VALUES(5,"Jack","Biology");
DELETE from student_demo
where student_id=5;

--Queries
--every column
SELECT * FROM student_demo;

SELECT student_name
FROM student_demo
ORDER BY student_name;


SELECT major
FROM student_demo
ORDER BY major DESC;

SELECT *
FROM student_demo
LIMIT 2;

-- Where operators <, >, <=, >=, =, <>, AND, OR
--NOT operator <>

SELECT *
FROM student_demo
WHERE student_name IN("Jack","Claire") AND student_id>2;











