--https://www.codewars.com/kata/57a0556c7cb1f31ab3000ad7/sql
--MakeUpperCase
--# write your SQL statement here: you are given a table 'makeuppercase' with column 's', return a table with column 's' and your result in a column named 'res'.
 SELECT s, UPPER(s) as res FROM makeuppercase; 