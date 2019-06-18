# Sailors who took a boat
USE SailorsDBMS;

SELECT * FROM Sailors S LEFT JOIN Reserves R ON S.sid = R.sid

				UNION ALL
SELECT * FROM Sailors S RIGHT JOIN Reserves R ON S.sid = R.sid;

