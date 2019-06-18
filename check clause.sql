DROP TABLE IF EXISTS COURSE;
create table COURSE (id int, semester varchar(30), check (semester in ('Fall', 'Spring')));
INSERT INTO COURSE VALUES(1,'Fall');
INSERT INTO COURSE VALUES(2,'Winter');
SELECT * FROM COURSE;

/*
MySQL 8.0.16 is the first version that supports CHECK constraints.

Read https://dev.mysql.com/doc/refman/8.0/en/create-table-check-constraints.html

If you use MySQL 8.0.15 or earlier, the MySQL Reference Manual says:

The CHECK clause is parsed but ignored by all storage engines.
*/