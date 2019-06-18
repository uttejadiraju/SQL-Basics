DROP TABLE IF EXISTS CUSTOMERS;
create table CUSTOMERS (id int, name varchar(30), AGE varchar(30), Salary int);
insert into CUSTOMERS values(1, 'A', '19', 1000);
insert into CUSTOMERS values(2, 'B', '20', 5000);
insert into CUSTOMERS values(3, 'C', '22', 10000);
insert into CUSTOMERS values(4, 'D', '23', 5000);
insert into CUSTOMERS values(5, 'E', '27', 10000);
insert into CUSTOMERS values(6, 'F', '29', 50000);
insert into CUSTOMERS values(7, 'G', '32', 1000);
insert into CUSTOMERS values(8, 'H', '45', 5000);
insert into CUSTOMERS values(9, 'I', '15', 50000);

# Find customers with highest salaries.

with max_sal(value) as (select max(Salary) from CUSTOMERS ) select c.* from CUSTOMERS c, max_sal where c.Salary= max_sal.value;