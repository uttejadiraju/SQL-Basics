/********************************************************************** ROW NUMBER() ************************************************** */
SELECT * FROM EMPLOYEES;

SELECT * FROM () WHERE Ranks = 2;

SELECT Employees.*, row_number() OVER(ORDER BY name) AS Row_Number  FROM Employees;


SELECT * FROM (SELECT Name, Salary, ROW_NUMBER() OVER ( ORDER BY name) AS row_number FROM EMPLOYEES) WHERE row_number = 2;

