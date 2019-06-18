drop table Reserves;
drop table Sailors;
drop table Boats;

create table Sailors (
  sid integer primary key,
  name varchar(32) not null,
  rating integer,
  age integer
);

create table Boats (
  bid integer primary key,
  name varchar(32) not null,
  color varchar(16)
);

create table Reserves (
  sid integer,
  bid integer,
  day varchar(100),
  primary key (sid, bid, day),
  foreign key (sid) references Sailors(sid),
  foreign key (bid) references Boats(bid)
);

insert into Sailors (sid, name, rating, age) values (1, 'Dustin', 7, 45);
insert into Sailors (sid, name, rating, age) values (2, 'Rusty', 10, 35);
insert into Sailors (sid, name, rating, age) values (3, 'Horatio', 5, 36);
insert into Sailors (sid, name, rating, age) values (4, 'Zorba', 8, 18);
insert into Sailors (sid, name, rating, age) values (5, 'Julius', 12, 25);
insert into Sailors (sid, name, rating, age) values (6, 'Uttej', 12, 25);

insert into Boats (bid, name, color) values (101, 'Interlake', 'blue');
insert into Boats (bid, name, color) values (102, 'Interlake', 'red');
insert into Boats (bid, name, color) values (103, 'Clipper', 'green');
insert into Boats (bid, name, color) values (104, 'Marine', 'red');

insert into Reserves (sid, bid, day) values (1, 101, '10-OCT-2017');
insert into Reserves (sid, bid, day) values (1, 102, '10-OCT-2017');
insert into Reserves (sid, bid, day) values (1, 103, '19-SEP-2017');
insert into Reserves (sid, bid, day) values (1, 104, '19-SEP-2017');
insert into Reserves (sid, bid, day) values (1, 101, '10-JUL-2017');
insert into Reserves (sid, bid, day) values (2, 102, '11-SEP-2017');
insert into Reserves (sid, bid, day) values (2, 102, '7-NOV-2017');
insert into Reserves (sid, bid, day) values (3, 101, '7-NOV-2017');
insert into Reserves (sid, bid, day) values (3, 102, '7-AUG-2017');
insert into Reserves (sid, bid, day) values (4, 103, '19-SEP-2017');


SELECT * FROM Sailors;

/* Boats reserved by sailor dustin */

SELECT * FROM Sailors INNER JOIN Reserves ON Sailors.sid = Reserves.sid AND Sailors.name = 'Dustin';

/*  Find all sailor id's of sailors who have a rating of at least 8 or reserved boat 103 */

(SELECT Sailors.sid FROM Sailors WHERE Sailors.rating >= 8

                    UNION
SELECT Reserves.sid From Reserves WHERE Reserves.bid = 103);


/

/*  Find the names of sailors who have not reserved a boat */
SELECT Sailors.name FROM Sailors WHERE Sailors.sid NOT IN ( SELECT Sailors.sid FROM Sailors INNER JOIN Reserves ON Sailors.sid = Reserves.sid);


/*  Find the names of sailors who have not reserved a boat whose name contains the string "D". Order the names in ascending order.  */
SELECT Sailors.name FROM Sailors WHERE Sailors.sid NOT IN ( SELECT Sailors.sid FROM Sailors INNER JOIN Reserves ON Sailors.sid = Reserves.sid  AND Sailors.name like '%D%') ;

/*  Find the names of sailors who have reserved at least two boats.   */
SELECT Sailors.name, COUNT(*) AS Counter FROM Sailors INNER JOIN Reserves ON Sailors.sid = Reserves.sid GROUP BY Sailors.name HAVING COUNT(*) >= 2; // Partially correct

SELECT Sailors.name, COUNT(DISTINCT Reserves.bid) FROM Sailors INNER JOIN Reserves ON Sailors.sid = Reserves.sid GROUP BY Sailors.name; /* Get sailor names who took unique boats */

SELECT Sailors.name FROM Sailors INNER JOIN Reserves ON Sailors.sid = Reserves.sid GROUP BY Sailors.name HAVING COUNT(DISTINCT Reserves.bid) >= 2; /* CORRECT QUERY */

/* . Find the names of sailors who have reserved all boats. */
SELECT Sailors.name FROM Sailors INNER JOIN Reserves ON Sailors.sid = Reserves.sid GROUP BY Sailors.name HAVING COUNT(DISTINCT Reserves.bid) = (SELECT COUNT(DISTINCT Boats.bid) FROM Boats);

/* . Find the sailor names of sailors whose rating is better than some sailor called Rusty.   */
SELECT Sailors.name FROM Sailors WHERE Sailors.rating > ANY (SELECT Sailors.rating FROM Sailors WHERE Sailors.name = 'Rusty');

SELECT s1.name FROM Sailors s1, Sailors s2 WHERE s1.rating > s2.rating AND s2.name = 'Rusty';

/* . Find the sailor names of sailors whose rating is better than every sailor called Rusty.   */

SELECT Sailors.name FROM Sailors WHERE Sailors.rating > ALL (SELECT Sailors.rating FROM Sailors WHERE Sailors.name = 'Rusty');

/*  Find the sailor name of sailors with the highest rating.   */

SELECT Sailors.name FROM Sailors WHERE Sailors.rating >= ALL (SELECT Sailors.rating FROM Sailors);

/* Find the name of sailor with oldest age. */ 

SELECT s1.name, s1.age FROM Sailors s1 WHERE NOT EXISTS ( SELECT * FROM Sailors s2 WHERE s2.age > s1.age);

SELECT Sailors.name, Sailors.age FROM Sailors WHERE Sailors.age >= ALL ( SELECT Sailors.age FROM Sailors);

/*
IN:

Returns true if a specified value matches any value in a subquery or a list.

Exists:

Returns true if a subquery contains any rows.

Join:

Joins 2 resultsets on the joining column.
*/


/*  For each rating, find the average age of sailors at that level of rating.  */

SELECT AVG(Sailors.age) AS Average, Sailors.rating FROM Sailors GROUP BY Sailors.rating;

/* Find the	names	of	sailors	who	have	reserved	a	red	or	a	green	boat	*/
SELECT s.name FROM Sailors s, Reserves r, Boats b WHERE s.sid = r.sid AND r.bid = b.bid AND ( b.color = 'red' OR b.color = 'green');

/* Find the	names	of	sailors	who	have	reserved	a	red	but not green	boat	*/
SELECT s.name FROM Sailors s, Reserves r, Boats b WHERE s.sid = r.sid AND r.bid = b.bid AND b.color = 'red' MINUS SELECT s1.name FROM Sailors s1, Reserves r1, Boats b1 WHERE s1.sid = r1.sid AND R1.bid = b1.bid AND b1.color = 'green';


/* Sailors name who didnt take red boat */
SELECT Sailors.name FROM Sailors WHERE Sailors.sid NOT IN ( SELECT Reserves.sid FROM Reserves INNER JOIN Boats ON Reserves.bid = Boats.bid AND Boats.color = 'red');

/* Correlated	  Nested	  Queries	 */

/* Find sailors name who took reservation 103 */

SELECT Sailors.name FROM Sailors INNER JOIN Reserves ON Sailors.sid = Reserves.sid AND Reserves.bid = 103; /* Using Joins */

SELECT Sailors.name FROM Sailors WHERE Sailors.sid IN ( SELECT Reserves.sid FROM Reserves WHERE Reserves.bid = 103); /* Nested queries */

SELECT s.name FROM Sailors s WHERE EXISTS ( SELECT * FROM Reserves where Reserves.bid = 103 AND Reserves.sid = s.sid); /* Co-related nested queries */


/* Find sailors who took 2 boats */
SELECT Sailors.name, COUNT(Sailors.name) AS Counter FROM Sailors INNER JOIN Reserves ON Sailors.sid = Reserves.sid GROUP BY Sailors.name HAVING COUNT(Sailors.name) = 2;

/* Find sailors who didnt take any boat */
SELECT Sailors.name FROM Sailors WHERE Sailors.sid NOT IN ( SELECT Sailors.sid FROM Sailors INNER JOIN Reserves ON Sailors.sid  = Reserves.sid);

/* Sailors who took all boats */
SELECT S.name FROM Sailors S WHERE  NOT EXISTS ( SELECT B.bid FROM Boats B WHERE NOT EXISTS ( SELECT R.bid FROM Reserves R WHERE R.bid=B.bid  AND R.sid=S.sid )); 



EXPLAIN PLAN FOR SELECT * FROM Sailors WHERE Sailors.name = 'Uttej';


SELECT 
    PLAN_TABLE_OUTPUT 
FROM 
    TABLE(DBMS_XPLAN.DISPLAY());
