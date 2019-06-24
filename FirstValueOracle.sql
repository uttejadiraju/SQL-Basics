
/****************************************************** FIRST VALUE  *************************************************************/

/* The FIRST_VALUE() is an analytic function that allows you to get the first value in an ordered set of value */
SELECT ID, NAME, GENDER, SALARY, FIRST_VALUE(SALARY) OVER ( ORDER BY SALARY) AS First_value FROM EMPLOYEES;

/* Returns least value from the order by clause */
SELECT ID, NAME, GENDER, SALARY, FIRST_VALUE(SALARY) OVER ( PARTITION BY GENDER ORDER BY SALARY) AS First_value FROM EMPLOYEES;

SELECT ID, NAME, GENDER, SALARY, FIRST_VALUE(SALARY) OVER ( PARTITION BY GENDER) AS First_value FROM EMPLOYEES;

SELECT * FROM EMPLOYEES;

SELECT ID, NAME, GENDER, SALARY, LAST_VALUE(SALARY) OVER ( PARTITION BY GENDER ORDER BY SALARY) AS First_value FROM EMPLOYEES;
