-- https://www.codewars.com/kata/526c7363236867513f0005ca
-- Leap Years

SELECT 
    year, 
    CASE 
        WHEN year % 400 = 0 THEN true
        WHEN year % 100 = 0 THEN false
        WHEN year % 4 = 0 THEN true
        ELSE false
    END AS is_leap
FROM 
    years
ORDER BY 
    year;

--Alternative

--select
--  year,
--  (year % 4 = 0 and year % 100 <> 0 ) or ( year % 400 = 0 ) as is_leap  -- your code here
--from years
--order by year asc;      -- result has to be sorted by year, ascending