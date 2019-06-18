# Sailors who took a boat
USE SailorsDBMS;

SELECT  S.name, R.bid FROM Sailors S RIGHT JOIN Reserves R ON S.sid = R.sid;