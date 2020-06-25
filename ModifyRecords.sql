/* Author - Richard Smith */


/*Problem (1) */
UPDATE Students
SET sname = 'Scott'
WHERE ssn = 746897816;


/* Problem (2) */
UPDATE Major
INNER JOIN Students ON Major.snum = Students.snum
SET dname = 'Computer Science', dlevel = 'MS'
WHERE Students.ssn = 746897816;


/* Problem (3) */
DELETE FROM Register
WHERE regtime = 'Fall2015';

