DROP TABLE IF EXISTS COURSE;
create table COURSE (id int, name varchar(30), year varchar(30));
insert into COURSE values(1, 'physics', 2019);
insert into COURSE values(1, 'maths', 2020);
insert into COURSE values(3, 'social', 2019);
insert into COURSE values(4, 'telugu', 2020);
insert into COURSE values(5, 'hindi', 2019);
insert into COURSE values(6, 'english', 2020);
insert into COURSE values(7, 'hindi', 2019);
insert into COURSE values(8, 'chemistry', 2020);

# Problem :- To ﬁnd the set of all courses taught either in 2019 or in 2020, or both. Returns only distinct values.
(select id from COURSE where year=2019) union (select id from COURSE where year=2020);

# Returns values with duplicates.
select id from COURSE where year=2019 or year = 2020;

# If we want to retain all duplicates, we must write union all in place of union:

(select id from COURSE where year=2019) union all (select id from COURSE where year=2020) order by id asc;