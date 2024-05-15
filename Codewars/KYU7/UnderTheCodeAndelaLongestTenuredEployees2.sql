--https://www.codewars.com/kata/663cb31a7f2daae93afac3ad/sql
--Uncover the Code: Andela's Longest-Tenured Employees

select sum(c) as hidden_code
from (select ascii(split_part(name, ' ', 2)) as c
    from employees
    where left_date is null
    order by joined_date
    limit 5) t;
