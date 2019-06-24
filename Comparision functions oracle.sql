/* SQL general functions | NVL, NVL2, DECODE, COALESCE, NULLIF, LNNVL and NANVL */

/* NVL() converts a null value to an actual value. Data types that can be used are date, character and number. Data type must match with each other i.e. expr1 and expr2 must of same data type.*/

CREATE TABLE EMPLOYEE (name varchar(30), salary int);

INSERT INTO EMPLOYEE values('uttej', 500);
INSERT INTO EMPLOYEE values('manoj', null);
INSERT INTO EMPLOYEE values(null, 600);

SELECT * FROM EMPLOYEE;

SELECT name, NVL(salary, 0000) AS replacement FROM EMPLOYEE;

SELECT NVL(name, 'dummy'), NVL(salary, -1) FROM EMPLOYEE;

SELECT name, NVL2(name, 'name exists', 'name not exists') FROM EMPLOYEE;

/* NVL checks if first argument is null and returns second argument */

/* NVL2 has different logic. If first argument is not null then NVL2 returns second argument, but in other case it will return third argument: */


INSERT INTO EMPLOYEE values('vamshi', 2000);
INSERT INTO EMPLOYEE values('balu', 3000);

SELECT * FROM EMPLOYEE;

SELECT name, salary, DECODE (name, 'uttej', salary * 100) AS revised_salary FROM EMPLOYEE;

DROP TABLE RESIDENT;
CREATE TABLE RESIDENT (name varchar(40), addr1 varchar(40), addr2 varchar(50), addr3 varchar(60));
INSERT INTO RESIDENT values('UTTEJ', '1-5-639', 'ROAD-NO-7', null);
INSERT INTO RESIDENT values('MANOJ', null, 'ROAD-NO-8', 'MALAKPET');
INSERT INTO RESIDENT values('VAMSHI', null, null, 'HIMAYATH NAGAR');

SELECT * FROM RESIDENT;

SELECT name, COALESCE(addr1, addr2,addr3) FROM RESIDENT;

SELECT * FROM RESIDENT FETCH NEXT 10 ROWS ONLY;


CREATE TABLE COUNTRIES (name varchar(30), population int);

INSERT INTO COUNTRIES values('india', 5000);
INSERT INTO COUNTRIES values('india', 6000);
INSERT INTO COUNTRIES values('india', 7000);
INSERT INTO COUNTRIES values('india', 8000);

INSERT INTO COUNTRIES values('australia', 7000);
INSERT INTO COUNTRIES values('australia', 8000);
INSERT INTO COUNTRIES values('australia', 9000);


INSERT INTO COUNTRIES values('kenya', 4000);
INSERT INTO COUNTRIES values('mexico', 2000);


SELECT name, SUM(population) FROM COUNTRIES GROUP BY (name); /* here GROUP BY normally reduces the number of rows returned by rolling them up and calculating Sum() for each row. */



SELECT SUM(population) OVER ( PARTITION BY name ) AS pop, name FROM COUNTRIES; /* PARTITION BY will not reduce the number of rows returned. */

SELECT * FROM COUNTRIES;

SELECT MAX(POPULATION) FROM COUNTRIES; /* only one row with maximum value */





