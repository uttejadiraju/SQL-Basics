#  Find the ids of sailors who have reserved a red boat except green boat. 


USE SailorsDBMS;
SELECT S.* FROM Sailors S, Reserves R , Boats b WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = 'red'

				EXCEPT 
SELECT S.* FROM Sailors S, Reserves R , Boats b WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = 'green';
