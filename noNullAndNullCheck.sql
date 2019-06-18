DROP TABLE IF EXISTS notNullCheck;
create table notNullCheck( ch char, intt int);
insert into notNullCheck(intt) values (5);
select * from notNullCheck;


DROP TABLE IF EXISTS nullCheck;
create table nullCheck( ch char NOT NULL, intt int);
insert into nullCheck(intt) values (5); # Throws error. Field 'ch' doesn't have a default value.
select * from nullCheck;