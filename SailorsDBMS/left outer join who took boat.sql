# Sailors who took a boat
USE SailorsDBMS;

SELECT  S.name, R.bid FROM Sailors S LEFT JOIN Reserves R ON S.sid = R.sid;