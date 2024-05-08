--SQL Basics - Monsters using CASE
--https://www.codewars.com/kata/593ef0e98b90525e090000b9/sql

SELECT
    th.id,
    th.heads,
    bh.legs,
    th.arms,
    bh.tails,
    CASE
        WHEN th.heads > th.arms OR bh.tails > bh.legs THEN 'BEAST'
        ELSE 'WEIRDO'
    END AS species
FROM
    top_half th
JOIN
    bottom_half bh ON th.id = bh.id
ORDER BY species;