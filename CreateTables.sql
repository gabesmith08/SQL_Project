/* Author - Richard Smith */


CREATE TABLE Students (
snum integer NOT NULL,
ssn integer NOT NULL,
sname varchar(10), 
gender varchar(1), 
dob date, 
c_addr varchar(20), 
c_phone varchar(10), 
p_addr varchar(20), 
p_phone varchar(10),
PRIMARY KEY (ssn),
UNIQUE (snum)
);


CREATE TABLE Departments (
depcode integer NOT NULL,
depname varchar(50) NOT NULL, 
phone varchar(10),
college varchar(20),
PRIMARY KEY (depcode),
UNIQUE (depname)
);


CREATE TABLE Degrees (
dname varchar(50)  NOT NULL,
dlevel varchar(5)  NOT NULL,
depcode integer,
PRIMARY KEY (dname, dlevel),
FOREIGN KEY (depcode) REFERENCES Departments(depcode)
);


CREATE TABLE Courses (
cnumber integer  NOT NULL,
cname varchar(50),
cdescription varchar(50),
credit_hours integer,
clevel varchar(20),
depcode integer,
PRIMARY KEY (cnumber),
FOREIGN KEY (depcode) REFERENCES Departments(depcode),
UNIQUE (cname)
);


CREATE TABLE Register (
snum integer  NOT NULL,
cnumber integer  NOT NULL,
regtime varchar(20),
grade integer,
PRIMARY KEY (snum, cnumber),
FOREIGN KEY (snum) REFERENCES Students(snum),
FOREIGN KEY (cnumber) REFERENCES Courses(cnumber)
);


CREATE TABLE Major (
snum integer  NOT NULL,
dname varchar(50)  NOT NULL,
dlevel varchar(5)  NOT NULL,
PRIMARY KEY (snum, dname, dlevel),
FOREIGN KEY (snum) REFERENCES Students(snum),
FOREIGN KEY (dname, dlevel) REFERENCES Degrees(dname, dlevel)
);


CREATE TABLE Minor (
snum integer  NOT NULL,
dname varchar(50)  NOT NULL,
dlevel varchar(5)  NOT NULL,
PRIMARY KEY (snum, dname, dlevel),
FOREIGN KEY (snum) REFERENCES Students(snum),
FOREIGN KEY (dname, dlevel) REFERENCES Degrees(dname, dlevel)
);








