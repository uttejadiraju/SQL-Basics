# Sailors who registerd two boats on same day
USE SailorsDBMS;
SELECT S.* FROM Sailors S, Reserves R, Reserves R1 WHERE S.sid = R.sid AND R.day = R1.day AND R.bid <> R1.bid