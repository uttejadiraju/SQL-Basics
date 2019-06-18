# Sailors who reserved red color boat order by age
USE SailorsDBMS;
SELECT S.* FROM Sailors S, Reserves R WHERE S.sid = R.sid;

SELECT S.* FROM Sailors S INNER JOIN Reserves R ON S.sid = R.sid;