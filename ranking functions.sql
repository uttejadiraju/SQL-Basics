  

DROP TABLE EMPLOYEES;
Create Table Employees
(
 Id int primary key,
 Name varchar(50),
 Gender varchar(10),
 Salary int
);


Insert Into Employees Values (1, 'Mark', 'Male', 5000);
Insert Into Employees Values (2, 'John', 'Male', 6500);
Insert Into Employees Values (3, 'Pam', 'Female', 7500);
Insert Into Employees Values (4, 'Sara', 'Female', 8000);
Insert Into Employees Values (5, 'Todd', 'Male', 9500);
Insert Into Employees Values (6, 'Mary', 'Female',1000);
Insert Into Employees Values (7, 'Ben', 'Male', 2500);
Insert Into Employees Values (8, 'Jodi', 'Female', 3000);
Insert Into Employees Values (9, 'Tom', 'Male', 4500);
Insert Into Employees Values (10, 'Ron', 'Male', 6000);

SELECT Gender, COUNT(*) AS GenderTotal, AVG(Salary) AS AvgSal, 
    MIN(Salary) AS MinSal, MAX(Salary) AS MaxSal
FROM Employees
GROUP BY Gender;

SELECT Name, Salary, Gender, 
    COUNT(Gender) OVER(PARTITION BY Gender) AS GenderTotals,
    AVG(Salary) OVER(PARTITION BY Gender) AS AvgSal,
    MIN(Salary) OVER(PARTITION BY Gender) AS MinSal,
    MAX(Salary) OVER(PARTITION BY Gender) AS MaxSal
FROM Employees;




SELECT Name, Salary, Gender, 
    COUNT(Gender) OVER(GROUP BY Gender) AS GenderTotals
FROM Employees;


SELECT * FROM (SELECT Name, Salary, DENSE_RANK() OVER ( ORDER BY Salary) AS Ranks FROM EMPLOYEES) WHERE Ranks = 2; /* NTH MAX SALARY */

SELECT Name, Salary, DENSE_RANK() OVER ( ORDER BY Salary) AS Ranks FROM EMPLOYEES;
