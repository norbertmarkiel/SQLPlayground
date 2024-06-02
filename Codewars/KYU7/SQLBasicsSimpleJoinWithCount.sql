--SQL Basics: Simple JOIN with COUNT
--https://www.codewars.com/kata/580918e24a85b05ad000010c/sql
SELECT 
    people.id, 
    people.name, 
    COUNT(toys.id) AS toy_count
FROM 
    people
LEFT JOIN 
    toys ON people.id = toys.people_id
GROUP BY 
    people.id, 
    people.name;


--Alternative
--SELECT p.*, COUNT(t) AS toy_count
--FROM people p
--JOIN toys t
--  ON t.people_id = p.id
--GROUP BY p.id