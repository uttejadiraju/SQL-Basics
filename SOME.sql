DROP TABLE IF EXISTS COURSE;
create table COURSE (id int, name varchar(30), year varchar(30), price int);
insert into COURSE values(1, 'physics', 2019, 10);
insert into COURSE values(2, 'maths', 2020, 50);
insert into COURSE values(3, 'social', 2019, 100);
insert into COURSE values(4, 'telugu', 2020, 50);
insert into COURSE values(5, 'hindi', 2019, 100);
insert into COURSE values(6, 'english', 2020, 50);
insert into COURSE values(7, 'hindi', 2019, 100);
insert into COURSE values(8, 'chemistry', 2020, 50);
insert into COURSE values(9, 'sanskrit', 2020, 500);

# Find the names of course which has atleast one high price than physics course.
select c1.* from COURSE c1, COURSE c2 where c1.price > c2.price AND c2.name = 'physics';

# Same problem using SOME
select c1.* from COURSE c1 where c1.price > some (select price from COURSE where name= 'physics');
