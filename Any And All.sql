DROP TABLE IF EXISTS CUSTOMERS;
create table CUSTOMERS (id int, name varchar(30), AGE varchar(30), Salary int);
insert into CUSTOMERS values(1, 'A', '19', 1000);
insert into CUSTOMERS values(2, 'B', '20', 5000);
insert into CUSTOMERS values(3, 'C', '22', 10000);
insert into CUSTOMERS values(4, 'D', '23', 5000);
insert into CUSTOMERS values(5, 'E', '27', 10000);
insert into CUSTOMERS values(6, 'F', '29', 5000);
insert into CUSTOMERS values(7, 'G', '32', 1000);
insert into CUSTOMERS values(8, 'H', '45', 5000);
insert into CUSTOMERS values(9, 'I', '15', 50000);

# 22, 27, 15
SELECT Age FROM customers WHERE Salary > 5000; 

 # 19, 20, 22, 23, 27, 29, 32, 45
SELECT * FROM customers WHERE Age > ANY( SELECT Age FROM customers WHERE Salary > 5000)

 # 29, 32, 45
 SELECT * FROM customers WHERE Age > ALL( SELECT Age FROM customers WHERE Salary > 5000);
