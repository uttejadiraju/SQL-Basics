DROP TABLE IF EXISTS COURSE;
DROP TABLE IF EXISTS COURSE1;
create table COURSE (id int, name varchar(30), year varchar(30), price int UNIQUE);

# Error
/*
insert into COURSE values(1, 'physics', 2019, 100);
insert into COURSE values(2, 'maths', 2020, 100);
*/

insert into COURSE values(1, 'physics', 2019, null);
insert into COURSE values(2, 'maths', 2020, null); # No error

SELECT * FROM COURSE;


create table COURSE1 (id int, name varchar(30), PRIMARY KEY(id));
insert into COURSE1 VALUES(1, 'hello');

# Error
insert into COURSE1 VALUES(null, 'hello');
# Error
insert into COURSE1 VALUES(1, 'hello');
