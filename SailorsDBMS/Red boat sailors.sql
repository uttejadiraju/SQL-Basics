# Sailors who reserved red color boat
USE SailorsDBMS;
SELECT S.* FROM Sailors S, Reserves R, Boats B WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = 'red'