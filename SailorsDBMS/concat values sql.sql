USE SailorsDBMS;
SELECT group_concat(name SEPARATOR '---') as myList from Sailors;