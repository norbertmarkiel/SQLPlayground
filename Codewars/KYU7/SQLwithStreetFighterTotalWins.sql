--https://www.codewars.com/kata/5ac698cdd325ad18a3000170/sql
--SQL with Street Fighter: Total Wins
SELECT 
  name,
  SUM(won) AS won,
  SUM(lost) AS lost
FROM fighters f
LEFT JOIN winning_moves wm
  ON f.move_id = wm.id
WHERE 
  wm.move NOT IN ('Hadoken', 'Shouoken', 'Kikoken')
GROUP BY 
  name 
ORDER BY 
  won DESC
LIMIT 6