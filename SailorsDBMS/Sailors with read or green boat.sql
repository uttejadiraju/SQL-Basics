#  Find the ids of sailors who have reserved a red boat or a green boat. 
USE SailorsDBMS;
SELECT S.* FROM Sailors S, Reserves R , Boats b WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = 'red'

				UNION
SELECT S.* FROM Sailors S, Reserves R , Boats b WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = 'green';

# The default for UNION queries is that duplicates are eliminated


# To display duplicates as well.

SELECT S.* FROM Sailors S, Reserves R , Boats b WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = 'red'

				UNION ALL
SELECT S.* FROM Sailors S, Reserves R , Boats b WHERE S.sid = R.sid AND R.bid = B.bid AND B.color = 'green'


#
	# Note that Union, Intersect and Except can be used on only two tables that are union-compatible, that is, have the same number of columns and the columns, taken in order, have the same types.  
 
 #
