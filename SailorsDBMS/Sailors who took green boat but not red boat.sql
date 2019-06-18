# Sailors who took green boat but not red boat

SELECT S.* FROM Sailors S, Reserves R , Boats b WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = 'green'
AND R.bid NOT IN ( SELECT bid FROM BOATS WHERE color = 'red' )