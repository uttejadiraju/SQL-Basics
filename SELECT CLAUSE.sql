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

SELECT * FROM A, B WHERE A.v = B.e;

# The asterisk symbol “*” can be used in the select clause to denote “allattributes.” Thus, the use of instructor.* in the select clause of the queryindicates that all attributes of instructor are to be selected.
# A select clause of the form select * indicates that all attributes of the result relation of the from clause are selected.


SELECT A.* FROM A, B WHERE A.v = B.e;

SELECT B.* FROM A, B WHERE A.v = B.e;