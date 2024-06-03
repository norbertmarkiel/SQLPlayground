--https://www.codewars.com/kata/591127cbe8b9fb05bd00004b/sql
--Best-Selling Books (SQL for Beginners #5)

SELECT * FROM books
ORDER BY copies_sold DESC
LIMIT 5;