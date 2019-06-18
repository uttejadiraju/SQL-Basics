DROP TABLE IF EXISTS COURSE;
create table COURSE (id int, name varchar(30), year varchar(30));
insert into COURSE values(1, 'physics', 2019);
insert into COURSE values(1, 'maths', 2020);
insert into COURSE values(3, 'social', 2019);
insert into COURSE values(3, 'social', 2019);
insert into COURSE values(4, 'telugu', 2020);
insert into COURSE values(5, 'hindi', 2019);
insert into COURSE values(6, 'english', 2020);
insert into COURSE values(7, 'hindi', 2019);
insert into COURSE values(8, 'chemistry', 2020);
insert into COURSE values(5, 'sanskrit', 2020);

select * from COURSE;
# Problem :- To find all courses taught in the Fall 2009 semester but not in the Spring 2010 semester, we write:

select id from COURSE where year =2019 AND id not in ( select id from COURSE where year=2020);

# Mysql dosen't support except

