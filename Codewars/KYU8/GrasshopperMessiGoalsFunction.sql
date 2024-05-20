-- https://www.codewars.com/kata/55f73be6e12baaa5900000d4/sql
-- Grasshopper - Messi goals function
-- you will be given a table, goals, with columns la_liga_goals, copa_del_rey_goals, and copa_del_rey_goals. Return a table with a column, res.

SELECT (la_liga_goals + copa_del_rey_goals + champions_league_Goals) as res
  FROM goals;