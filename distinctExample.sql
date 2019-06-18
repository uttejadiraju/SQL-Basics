DROP TABLE IF EXISTS distinctExample;
create table distinctExample(names varchar(10));
insert into distinctExample(names) values('a');
insert into distinctExample(names) values('a');
insert into distinctExample(names) values('a');
select distinct names from distinctExample;
select count(distinct names) from distinctExample;
select names from distinctExample;
