# Group by and aggregate operations
USE SailorsDBMS;

drop table Customers;

CREATE TABLE Customers (orderid int, customerid int, customer varchar(20), total int, items int);

insert into Customers (orderid, customerid, customer, total, items) values ( 1 ,1 ,'Bob', 1300,10),
 ( 2 ,3 ,'Fred', 500,2),( 3 ,5 ,'Tess', 2500,8), ( 4 ,1 ,'Bob', 300,6),( 5 ,2 ,'Carly', 800,3), ( 6 ,2 ,'Carly', 1000,12),
 (7 ,3 ,'Fred', 100,1), (8 ,5 ,'Tess', 11500,50),(9 ,4 ,'Jenny', 200,2),(10 ,1 ,'Bob', 500,15);
 
 SELECT * FROM Customers;
 
 #  Number of orders for each customer.

 SELECT customer, COUNT(*) as Count FROM Customers GROUP BY customer ORDER BY customer;
 
 
 # Sum of the total and items for each customer
 
 
 SELECT customer, SUM(total) as TotalSum , SUM(items) as TotalItems FROM Customers GROUP BY Customer ORDER BY Customer;
 
    
    
# Highest order total for each customers.

SELECT customer, MAX(total) as MaxTotal FROM Customers GROUP BY Customer ORDER BY Customer;