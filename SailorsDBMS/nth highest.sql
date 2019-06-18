# N th highest 
SELECT S.age   FROM Sailors S ORDER BY S.age DESC LIMIT 1 OFFSET (n-1);