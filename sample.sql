CREATE DATABASE COLLEGE1;
USE COLLEGE1;
CREATE TABLE STUDENT (
ROLLNO INT PRIMARY KEY,
NAME VARCHAR(50),
MARKS INT NOT NULL,
GRADE VARCHAR(1),
CITY VARCHAR(20)
);
INSERT INTO STUDENT 
 (ROLLNO,NAME,MARKS,GRADE,CITY)
 VALUES
 (101,"ANIL",78,"C","PUNE"),
 (102,"BHMIKA",93,"A","MUMBAI"),
 (103,"CHETAN",85,"B","MUMBAI"),
 (104,"DHRUV",96,"A","DELHI"),
 (105,"EMANUEL",12,"F","DELHI"),
 (106,"FARAH",82,"B","DELHI");
 
SELECT NAME,GRADE FROM STUDENT;
SELECT * FROM STUDENT;
SELECT DISTINCT CITY FROM STUDENT;

SELECT * FROM STUDENT WHERE MARKS>80;
SELECT * FROM STUDENT WHERE CITY="MUMBAI";
SELECT * FROM STUDENT WHERE MARKS>80 AND CITY="MUMBAI";

SELECT * FROM STUDENT WHERE MARKS+10 > 100;
SELECT * FROM STUDENT WHERE MARKS=93;

SELECT * FROM STUDENT WHERE MARKS>90 AND CITY="DELHI";
SELECT * FROM STUDENT WHERE MARKS>90 OR CITY="DELHI";

SELECT * FROM STUDENT WHERE MARKS BETWEEN 80 AND 90;
SELECT * FROM STUDENT WHERE CITY IN ("PUNE","CHENNAI");
SELECT * FROM STUDENT WHERE CITY NOT IN ("MUMBAI","PUNE","CHENNAI");
SELECT * FROM STUDENT WHERE MARKS>85 LIMIT 1;
SELECT * FROM STUDENT ORDER BY CITY DESC;
SELECT * FROM STUDENT ORDER BY MARKS ASC LIMIT 2;
SELECT MARKS FROM STUDENT;
SELECT MAX(MARKS) FROM STUDENT;
SELECT MIN(MARKS) FROM STUDENT;
SELECT AVG(MARKS) FROM STUDENT;
SELECT COUNT(MARKS) FROM STUDENT;
SELECT SUM(MARKS) FROM STUDENT;
SELECT CITY  FROM STUDENT GROUP BY CITY;
SELECT CITY ,COUNT(NAME) FROM STUDENT GROUP BY CITY;
SELECT CITY,AVG(MARKS) FROM STUDENT  GROUP BY CITY ORDER BY CITY ASC;
SELECT GRADE,COUNT(ROLLNO) 
FROM STUDENT
GROUP BY GRADE
ORDER BY GRADE;

SELECT CITY ,COUNT(NAME) FROM STUDENT GROUP BY CITY HAVING MAX(MARKS) > 90;

SELECT CITY
FROM STUDENT
WHERE GRADE="A"
GROUP BY CITY
HAVING MAX(MARKS) > 80
ORDER BY CITY;

SET SQL_SAFE_UPDATES=0;
UPDATE STUDENT SET GRADE="O" WHERE GRADE="A";
UPDATE STUDENT SET GRADE="A" WHERE MARKS BETWEEN 90 AND 100;
SELECT * FROM STUDENT;
UPDATE STUDENT SET MARKS=82 WHERE ROLLNO=105;
UPDATE STUDENT SET GRADE="B" WHERE MARKS BETWEEN 80 AND 90;
UPDATE STUDENT SET MARKS= 78 WHERE ROLLNO=101;
UPDATE STUDENT SET MARKS= 93 WHERE ROLLNO=102;
UPDATE STUDENT SET MARKS= 85 WHERE ROLLNO=103;
UPDATE STUDENT SET MARKS= 96 WHERE ROLLNO=104;
UPDATE STUDENT SET MARKS= 82 WHERE ROLLNO=105;
UPDATE STUDENT SET MARKS= 90 WHERE ROLLNO=106;
UPDATE STUDENT SET MARKS=MARKS+1;
DELETE FROM STUDENT WHERE MARKS<=80;

CREATE TABLE DEPT(
ID INT PRIMARY KEY,
NAME VARCHAR(50)
);

CREATE TABLE TEACHER (
ID INT PRIMARY KEY,
NAME VARCHAR(50),
DEPT_ID INT,
FOREIGN KEY (DEPT_ID) REFERENCES DEPT(ID)
);

CREATE TABLE TEACHER (
ID INT PRIMARY KEY,
NAME VARCHAR(50),
DEPT_ID INT,
FOREIGN KEY (DEPT_ID) REFERENCES DEPT(ID)
ON DELETE  CASCADE
ON UPDATE CASCADE
);

ALTER TABLE STUDENT ADD COLUMN AGE INT NOT NULL DEFAULT 19;
SELECT * FROM STUDENT;
ALTER TABLE STUDENT DROP COLUMN  AGE;
ALTER TABLE STUDENT MODIFY COLUMN AGE VARCHAR(2);
ALTER TABLE STUDENT RENAME TO STUD;
ALTER TABLE STUD RENAME TO STUDENT;

TRUNCATE TABLE STUDENT;
INSERT INTO STUDENT 
 (ROLLNO,NAME,MARKS,GRADE,CITY)
 VALUES
 (101,"ANIL",78,"C","PUNE"),
 (102,"BHMIKA",93,"A","MUMBAI"),
 (103,"CHETAN",85,"B","MUMBAI"),
 (104,"DHRUV",96,"A","DELHI"),
 (105,"EMANUEL",12,"F","DELHI"),
 (106,"FARAH",82,"B","DELHI");
 
ALTER TABLE STUDENT CHANGE NAME FULL_NAME VARCHAR(50) ;
DELETE FROM STUDENT WHERE MARKS<80;
SET SQL_SAFE_UPDATES=0;
SELECT * FROM STUDENT;
ALTER TABLE STUDENT DROP COLUMN AGE;

CREATE TABLE STUD_JOIN (
J_ID INT PRIMARY KEY,
J_NAME VARCHAR(50)
);

INSERT INTO STUD_JOIN (J_ID,J_NAME) VALUES (1001,"ADAM"),(1002,"BOB"),(1003,"CASEY");

DROP TABLE COURSE;
CREATE TABLE COURSE (
J_ID INT PRIMARY KEY,
COURSE VARCHAR(50)
);

INSERT INTO COURSE (J_ID,COURSE) VALUES (1002,"ENGLISH"),(1005,"MATHS"),(1003,"SCIENCE"),(1007,"COMPUTER SCIENCE");
SELECT * FROM STUD_JOIN;
SELECT * FROM COURSE;

SELECT* FROM STUD_JOIN INNER JOIN COURSE ON STUD_JOIN.J_ID=COURSE.J_ID;
SELECT* FROM STUD_JOIN AS S INNER JOIN COURSE AS C ON S.J_ID = C.J_ID;



CREATE TABLE EMPLOYEE (
ID INT PRIMARY KEY,
NAME VARCHAR(50),
MANAGER_ID INT 
);
INSERT INTO EMPLOYEE (ID,NAME,MANAGER_ID) VALUES (101,"ADAM",103),(102,"BOB",104),(103,"CASEY",NULL),(104,"DOANLD",103);
SELECT * FROM EMPLOYEE;
SELECT * FROM EMPLOYEE AS A
JOIN EMPLOYEE AS B
ON A.ID=B.MANAGER_ID; 

SELECT A.NAME,B.NAME
FROM EMPLOYEE AS A
JOIN EMPLOYEE AS B
ON A.ID=B.MANAGER_ID; 
SELECT A.NAME AS MANAGER_NAME,B.NAME
FROM EMPLOYEE AS A
JOIN EMPLOYEE AS B
ON A.ID=B.MANAGER_ID; 

SELECT NAME FROM EMPLOYEE
UNION 
SELECT NAME FROM EMPLOYEE;
SELECT NAME FROM EMPLOYEE
UNION ALL
SELECT NAME FROM EMPLOYEE;

SELECT * FROM STUDENT;
SELECT FULL_NAME ,MARKS 
FROM STUDENT 
WHERE MARKS > (SELECT AVG(MARKS) FROM STUDENT);

SELECT ROLLNO,FULL_NAME 
FROM STUDENT 
WHERE ROLLNO IN (
	SELECT  ROLLNO 
    FROM STUDENT 
    WHERE ROLLNO % 2 =0 );
    
SELECT MAX(MARKS) FROM(SELECT * FROM STUDENT WHERE CITY="DELHI") AS TEMP;

CREATE VIEW VIEW1 AS 
SELECT ROLLNO,FULL_NAME,MARKS FROM STUDENT;
SELECT * FROM VIEW1;
SELECT * FROM VIEW1 WHERE MARKS>=90;
DROP VIEW  VIEW1;