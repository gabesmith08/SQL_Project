/* Author - Richard Smith */


/* Problem (1) */
SELECT sname, ssn
FROM Students
WHERE sname = 'Becky';


/* Problem (2) */
SELECT cname
FROM Courses
Where depcode = 401;


/* Problem (3) */
SELECT dname, dlevel
FROM Degrees
Where depcode = 401;


/* Problem (4) */
SELECT sname
FROM Students
WHERE snum = 1007
 OR snum = 1005
 OR snum = 1001;
 
 
/* Problem (5) */
SELECT COUNT(sname)
FROM Students
WHERE snum = 1007
 OR snum = 1005
 OR snum = 1001;
 
 
 /* Problem (6) */
SELECT Students.sname, Students.snum
FROM (Students
INNER JOIN Register ON Students.snum = Register.snum)
WHERE cnumber = 311;


 /* Problem (7) */
SELECT snum, sname
FROM Students
WHERE dob = (SELECT MIN(dob) FROM Students);


 /* Problem (8) */
SELECT snum, sname
FROM Students
WHERE dob = (SELECT MAX(dob) FROM Students);


 /* Problem (9) */
SELECT sname, snum, ssn
FROM Students
WHERE sname LIKE '%n%'
AND sname LIKE '%N%';


/* Problem (10) */
SELECT sname, snum, ssn
FROM Students
WHERE sname NOT LIKE '%n%'
AND sname NOT LIKE '%N%';
 
 
 /* Problem (11) */
SELECT Students.sname
FROM (Students
INNER JOIN Register ON Students.snum = Register.snum)
WHERE Register.regtime = 'Fall2015';


 /* Problem (12) */
SELECT cnumber, cname
FROM Courses
WHERE depcode = 401;


 /* Problem (13) */
SELECT cnumber, cname
FROM Courses
WHERE depcode = 401
OR depcode =  404;




