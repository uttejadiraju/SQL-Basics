DROP TABLE IF EXISTS COURSE;
create table COURSE (id int, name varchar(30), year varchar(30), price int);
insert into COURSE values(1, 'physics', 2019, 100);
insert into COURSE values(2, 'maths', 2020, 50);
insert into COURSE values(3, 'social', 2019, 100);
insert into COURSE values(4, 'telugu', 2020, 50);
insert into COURSE values(5, 'hindi', 2019, 100);
insert into COURSE values(6, 'english', 2020, 50);
insert into COURSE values(7, 'hindi', 2019, 100);
insert into COURSE values(8, 'chemistry', 2020, 50);
insert into COURSE values(5, 'sanskrit', 2020, 50);


select sum(price), name from COURSE group by name;