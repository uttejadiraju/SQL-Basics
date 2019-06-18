# The SQL query below says "return only 2 records, start on record 4 (OFFSET 3)":
SELECT S.*   FROM Sailors S ORDER BY S.age LIMIT 2 OFFSET 3;