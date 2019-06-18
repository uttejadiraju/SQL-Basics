DROP TABLE IF EXISTS STUDENT;
DROP TABLE IF EXISTS TAKES;
CREATE TABLE STUDENT(ID int, name varchar(30), dept_name varchar(30), tot_cred int);

insert into STUDENT VALUES(00128, 'Zhang', 'Comp.Sci.', 102);
insert into STUDENT VALUES(12345, 'Shankar','Comp.Sci.', 32);
insert into STUDENT VALUES(19991, 'Brandt', 'History', 80);
insert into STUDENT VALUES(23121, 'Chavez', 'Finance', 110);
insert into STUDENT VALUES(44553, 'Peltier', 'Physics', 56);
insert into STUDENT VALUES(45678, 'Levy', 'Physics', 46);
insert into STUDENT VALUES(54321, 'Williams', 'Comp.Sci.', 54);
insert into STUDENT VALUES(55739, 'Sanchez', 'Music', 38);
insert into STUDENT VALUES(70557, 'Snow', 'Physics', 0);
insert into STUDENT VALUES(76543, 'Brown', 'Comp.Sci.', 58);
insert into STUDENT VALUES(76653, 'Aoi', 'Elec.Eng.', 60);
insert into STUDENT VALUES(98765, 'Bourikas', 'Elec.Eng.', 98);
insert into STUDENT VALUES(98988, 'Tanaka', 'Biology', 120);


CREATE TABLE TAKES(ID int, course_id varchar(30), sec_id int, semester varchar(30), year int, grade varchar(30));


insert into TAKES VALUES(00128 ,'CS-101', 1 , 'Fall' ,2009, 'A');

insert into TAKES VALUES(00128 ,'CS-347',1, 'Fall' ,2009, 'A');

insert into TAKES VALUES(12345 , 'CS-101', 1, 'Fall' ,2009, 'C'); 

insert into TAKES VALUES(12345 ,'CS-190', 2, 'Spring' ,2009, 'A'); 

insert into TAKES VALUES(12345 ,'CS-315', 1 , 'Spring' ,2010, 'A'); 

insert into TAKES VALUES(12345 ,'CS-347',1 , 'Fall' ,2009, 'A'); 

insert into TAKES VALUES(19991 ,'HIS-351', 1, 'Spring' ,2010, 'B');

insert into TAKES VALUES(23121 ,'FIN-201', 1 , 'Spring' ,2010, 'C+');

insert into TAKES VALUES(44553 ,'PHY-101',1, 'Fall' ,2009, 'B');

insert into TAKES VALUES(45678 ,'CS-101',1, 'Fall' ,2009, 'F');

insert into TAKES VALUES(45678 ,'CS-101', 1 , 'Spring' ,2010, 'B+');

insert into TAKES VALUES(45678 ,'CS-319', 1 , 'Spring' ,2010, 'B'); 

insert into TAKES VALUES(54321 ,'CS-101', 1 ,'Fall' ,2009, 'A');

insert into TAKES VALUES(54321 ,'CS-190', 2, 'Spring' ,2009, 'B+'); 

insert into TAKES VALUES(55739 ,'MU-199', 1 , 'Spring' ,2010, 'A');

insert into TAKES VALUES(76543 ,'CS-101',1, ' Fall' ,2009, 'A');

insert into TAKES VALUES(76543 ,'CS-319', 2, 'Spring' ,2010 ,'A'); 

insert into TAKES VALUES(76653 ,'EE-181', 1,  'Spring' ,2009, 'C'); 

insert into TAKES VALUES(98765 ,'CS-101',1, 'Fall' ,2009, 'C');

insert into TAKES VALUES(98765 ,'CS-315',1, 'Spring' ,2010,'B'); 

insert into TAKES VALUES(98988 ,'BIO-101',1, 'Summer', 2009, 'A');

insert into TAKES VALUES(98988 ,'BIO-301', 1 , 'Summer',2010 ,null);

SELECT * FROM TAKES;

SELECT * FROM STUDENT JOIN TAKES ON STUDENT.ID = TAKES.ID;

/*
'128', 'Zhang', 'Comp.Sci.', '102', '128', 'CS-101', '1', 'Fall', '2009', 'A'
'128', 'Zhang', 'Comp.Sci.', '102', '128', 'CS-347', '1', 'Fall', '2009', 'A'
'12345', 'Shankar', 'Comp.Sci.', '32', '12345', 'CS-101', '1', 'Fall', '2009', 'C'
'12345', 'Shankar', 'Comp.Sci.', '32', '12345', 'CS-190', '2', 'Spring', '2009', 'A'
'12345', 'Shankar', 'Comp.Sci.', '32', '12345', 'CS-315', '1', 'Spring', '2010', 'A'
'12345', 'Shankar', 'Comp.Sci.', '32', '12345', 'CS-347', '1', 'Fall', '2009', 'A'
'19991', 'Brandt', 'History', '80', '19991', 'HIS-351', '1', 'Spring', '2010', 'B'
'23121', 'Chavez', 'Finance', '110', '23121', 'FIN-201', '1', 'Spring', '2010', 'C+'
'44553', 'Peltier', 'Physics', '56', '44553', 'PHY-101', '1', 'Fall', '2009', 'B'
'45678', 'Levy', 'Physics', '46', '45678', 'CS-101', '1', 'Fall', '2009', 'F'
'45678', 'Levy', 'Physics', '46', '45678', 'CS-101', '1', 'Spring', '2010', 'B+'
'45678', 'Levy', 'Physics', '46', '45678', 'CS-319', '1', 'Spring', '2010', 'B'
'54321', 'Williams', 'Comp.Sci.', '54', '54321', 'CS-101', '1', 'Fall', '2009', 'A'
'54321', 'Williams', 'Comp.Sci.', '54', '54321', 'CS-190', '2', 'Spring', '2009', 'B+'
'55739', 'Sanchez', 'Music', '38', '55739', 'MU-199', '1', 'Spring', '2010', 'A'
'76543', 'Brown', 'Comp.Sci.', '58', '76543', 'CS-101', '1', ' Fall', '2009', 'A'
'76543', 'Brown', 'Comp.Sci.', '58', '76543', 'CS-319', '2', 'Spring', '2010', 'A'
'76653', 'Aoi', 'Elec.Eng.', '60', '76653', 'EE-181', '1', 'Spring', '2009', 'C'
'98765', 'Bourikas', 'Elec.Eng.', '98', '98765', 'CS-101', '1', 'Fall', '2009', 'C'
'98765', 'Bourikas', 'Elec.Eng.', '98', '98765', 'CS-315', '1', 'Spring', '2010', 'B'
'98988', 'Tanaka', 'Biology', '120', '98988', 'BIO-101', '1', 'Summer', '2009', 'A'
'98988', 'Tanaka', 'Biology', '120', '98988', 'BIO-301', '1', 'Summer', '2010', NULL

*/

# OR 
SELECT * FROM STUDENT , TAKES WHERE STUDENT.ID = TAKES.ID;

/*
'128', 'Zhang', 'Comp.Sci.', '102', '128', 'CS-101', '1', 'Fall', '2009', 'A'
'128', 'Zhang', 'Comp.Sci.', '102', '128', 'CS-347', '1', 'Fall', '2009', 'A'
'12345', 'Shankar', 'Comp.Sci.', '32', '12345', 'CS-101', '1', 'Fall', '2009', 'C'
'12345', 'Shankar', 'Comp.Sci.', '32', '12345', 'CS-190', '2', 'Spring', '2009', 'A'
'12345', 'Shankar', 'Comp.Sci.', '32', '12345', 'CS-315', '1', 'Spring', '2010', 'A'
'12345', 'Shankar', 'Comp.Sci.', '32', '12345', 'CS-347', '1', 'Fall', '2009', 'A'
'19991', 'Brandt', 'History', '80', '19991', 'HIS-351', '1', 'Spring', '2010', 'B'
'23121', 'Chavez', 'Finance', '110', '23121', 'FIN-201', '1', 'Spring', '2010', 'C+'
'44553', 'Peltier', 'Physics', '56', '44553', 'PHY-101', '1', 'Fall', '2009', 'B'
'45678', 'Levy', 'Physics', '46', '45678', 'CS-101', '1', 'Fall', '2009', 'F'
'45678', 'Levy', 'Physics', '46', '45678', 'CS-101', '1', 'Spring', '2010', 'B+'
'45678', 'Levy', 'Physics', '46', '45678', 'CS-319', '1', 'Spring', '2010', 'B'
'54321', 'Williams', 'Comp.Sci.', '54', '54321', 'CS-101', '1', 'Fall', '2009', 'A'
'54321', 'Williams', 'Comp.Sci.', '54', '54321', 'CS-190', '2', 'Spring', '2009', 'B+'
'55739', 'Sanchez', 'Music', '38', '55739', 'MU-199', '1', 'Spring', '2010', 'A'
'76543', 'Brown', 'Comp.Sci.', '58', '76543', 'CS-101', '1', ' Fall', '2009', 'A'
'76543', 'Brown', 'Comp.Sci.', '58', '76543', 'CS-319', '2', 'Spring', '2010', 'A'
'76653', 'Aoi', 'Elec.Eng.', '60', '76653', 'EE-181', '1', 'Spring', '2009', 'C'
'98765', 'Bourikas', 'Elec.Eng.', '98', '98765', 'CS-101', '1', 'Fall', '2009', 'C'
'98765', 'Bourikas', 'Elec.Eng.', '98', '98765', 'CS-315', '1', 'Spring', '2010', 'B'
'98988', 'Tanaka', 'Biology', '120', '98988', 'BIO-101', '1', 'Summer', '2009', 'A'
'98988', 'Tanaka', 'Biology', '120', '98988', 'BIO-301', '1', 'Summer', '2010', NULL

*/

# The above two queries give id twice in output. I.E attributes have two ID.alter

# A version of this query that displays the ID value only once is as follows:
select STUDENT.ID as ID, name, dept_name, tot_cred, course_id, sec_id, semester, year, grade from STUDENT join TAKES on STUDENT.ID=TAKES.ID; 

/**
'128', 'Zhang', 'Comp.Sci.', '102', 'CS-101', '1', 'Fall', '2009', 'A'
'128', 'Zhang', 'Comp.Sci.', '102', 'CS-347', '1', 'Fall', '2009', 'A'
'12345', 'Shankar', 'Comp.Sci.', '32', 'CS-101', '1', 'Fall', '2009', 'C'
'12345', 'Shankar', 'Comp.Sci.', '32', 'CS-190', '2', 'Spring', '2009', 'A'
'12345', 'Shankar', 'Comp.Sci.', '32', 'CS-315', '1', 'Spring', '2010', 'A'
'12345', 'Shankar', 'Comp.Sci.', '32', 'CS-347', '1', 'Fall', '2009', 'A'
'19991', 'Brandt', 'History', '80', 'HIS-351', '1', 'Spring', '2010', 'B'
'23121', 'Chavez', 'Finance', '110', 'FIN-201', '1', 'Spring', '2010', 'C+'
'44553', 'Peltier', 'Physics', '56', 'PHY-101', '1', 'Fall', '2009', 'B'
'45678', 'Levy', 'Physics', '46', 'CS-101', '1', 'Fall', '2009', 'F'
'45678', 'Levy', 'Physics', '46', 'CS-101', '1', 'Spring', '2010', 'B+'
'45678', 'Levy', 'Physics', '46', 'CS-319', '1', 'Spring', '2010', 'B'
'54321', 'Williams', 'Comp.Sci.', '54', 'CS-101', '1', 'Fall', '2009', 'A'
'54321', 'Williams', 'Comp.Sci.', '54', 'CS-190', '2', 'Spring', '2009', 'B+'
'55739', 'Sanchez', 'Music', '38', 'MU-199', '1', 'Spring', '2010', 'A'
'76543', 'Brown', 'Comp.Sci.', '58', 'CS-101', '1', ' Fall', '2009', 'A'
'76543', 'Brown', 'Comp.Sci.', '58', 'CS-319', '2', 'Spring', '2010', 'A'
'76653', 'Aoi', 'Elec.Eng.', '60', 'EE-181', '1', 'Spring', '2009', 'C'
'98765', 'Bourikas', 'Elec.Eng.', '98', 'CS-101', '1', 'Fall', '2009', 'C'
'98765', 'Bourikas', 'Elec.Eng.', '98', 'CS-315', '1', 'Spring', '2010', 'B'
'98988', 'Tanaka', 'Biology', '120', 'BIO-101', '1', 'Summer', '2009', 'A'
'98988', 'Tanaka', 'Biology', '120', 'BIO-301', '1', 'Summer', '2010', NULL

**/

