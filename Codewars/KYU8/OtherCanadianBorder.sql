--On the Canadian Border
--https://www.codewars.com/kata/590ba881fe13cfdcc20001b4/sql
Select 
name,country 
from travelers
where country not in ('Canada','Mexico','USA')