DROP DATABASE IF EXISTS conceptsUniversity;
create database conceptsUniversity;
use conceptsUniversity;

create table instructor(id int, name varchar(30), dept_name varchar(30), salary int);
insert into instructor(id,name,dept_name,salary) values ('12121', 'A', 'Music', '9000');
insert into instructor(id,name,dept_name,salary) values ('12122', 'B', 'Dance', '9000');
insert into instructor(id,name,dept_name,salary) values ('12123', 'c', 'Karate', '9000');
insert into instructor(id,name,dept_name,salary) values ('12124', 'D', 'Music', '9000');
insert into instructor(id,name,dept_name,salary) values ('12125', 'E', 'Sing', '9000');
insert into instructor(id,name,dept_name,salary) values ('12126', 'F', 'Sitting', '9000');
insert into instructor(id,name,dept_name,salary) values ('12127', 'G', 'Shout', '9000');
insert into instructor(id,name,dept_name,salary) values ('12128', 'H', 'Fight', '9000');
insert into instructor(id,name,dept_name,salary) values ('12129', 'I', 'Music', '9000');

create table department(dept_name varchar(30), building varchar(30), budget int);
insert into department(dept_name,building,budget) values ('Music', 'New york', 10000);
insert into department(dept_name,building,budget) values ('Dance', 'Chicago', 10000);
insert into department(dept_name,building,budget) values ('Shout', 'Canada', 10000);
insert into department(dept_name,building,budget) values ('Fight', 'India', 10000);
insert into department(dept_name,building,budget) values ('Sitting', 'China', 10000);

select * from instructor;
select * from department;


# Problem:-
# "Retrieve the names of all instructors, along with their department names and department building name.” 
# Solution:- 
select instructor.id, instructor.name, instructor.dept_name, instructor.salary from instructor, department where instructor.dept_name = department.dept_name;

# or

select instructor.id, instructor.name, instructor.dept_name, instructor.salary from instructor where instructor.dept_name in ( select dept_name from department );

# Cross join
	# approach 1
		SELECT t1.*,t2.*
		FROM instructor t1
		CROSS JOIN department t2;
	# approach 2
		SELECT *
		FROM instructor t1
		CROSS JOIN department t2;
	# approach 3
		SELECT *
		FROM instructor, department;
# Natural join :- The natural join operation operates on two relations and produces a relation as the result. Unlike the Cartesian product of two relations, which concatenates each tuple of the ﬁrst relation with every tuple of the second, natural join considers only those pairs of tuples with the same value on those attributes that appear in the schemas of both relations

	SELECT * from instructor natural join department;
