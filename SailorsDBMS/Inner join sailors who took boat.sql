# Sailors who took a boat
USE SailorsDBMS;

SELECT S.* FROM Sailors S INNER JOIN Reserves R ON S.sid = R.sid;