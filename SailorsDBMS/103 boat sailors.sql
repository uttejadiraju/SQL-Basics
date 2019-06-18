# Sailors who reserved boat number 103
USE SailorsDBMS;
SELECT S.* FROM Sailors S, Reserves R WHERE S.sid = R.sid AND R.bid = 103 