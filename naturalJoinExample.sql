DROP TABLE IF EXISTS A;
DROP TABLE IF EXISTS B;
create table A(v int);
create table B(e int);
insert into A(v) values(1);
insert into A(v) values(2);
insert into A(v) values(3);
insert into A(v) values(4);
insert into A(v) values(5);

insert into B(e) values(1);
insert into B(e) values(20);
insert into B(e) values(30);
insert into B(e) values(40);
insert into B(e) values(50);

select * from A natural join B;




# Natural join dosen't work if the attributes names of two relations don't match atleast for one entry.

# Working example



DROP TABLE IF EXISTS A;
DROP TABLE IF EXISTS B;
create table A(v int);
create table B(v int);
insert into A(v) values(1);
insert into A(v) values(2);
insert into A(v) values(3);
insert into A(v) values(4);
insert into A(v) values(5);

insert into B(v) values(1);
insert into B(v) values(20);
insert into B(v) values(30);
insert into B(v) values(40);
insert into B(v) values(50);

select * from A natural join B; # Returns 1 row only.

# NOW:-

DROP TABLE IF EXISTS A;
DROP TABLE IF EXISTS B;
create table A(v int);
create table B(v int);
insert into A(v) values(1);
insert into A(v) values(2);
insert into A(v) values(3);
insert into A(v) values(4);
insert into A(v) values(5);

insert into B(v) values(10);
insert into B(v) values(20);
insert into B(v) values(30);
insert into B(v) values(40);
insert into B(v) values(50);

select * from A natural join B; # Returns empty rows !!!. Attributes matched, but no similar tuples.