# Sailors who reserved red color boat order by age
USE SailorsDBMS;
SELECT S.* FROM Sailors S, Reserves R, Boats B WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = 'red' order by S.age