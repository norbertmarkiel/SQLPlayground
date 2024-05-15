-- https://www.codewars.com/kata/663cb31a7f2daae93afac3ad/sql
-- Uncover the Code: Andela's Longest-Tenured Employees

WITH active_employees AS (
    SELECT 
        id, 
        name, 
        joined_date
    FROM 
        employees
    WHERE 
        left_date IS NULL
    ORDER BY 
        joined_date ASC
    LIMIT 5
),
last_name_letters AS (
    SELECT 
        SUBSTRING(SPLIT_PART(name, ' ', 2), 1, 1) AS last_name_first_letter
    FROM 
        active_employees
),
ascii_values AS (
    SELECT 
        ASCII(last_name_first_letter) AS ascii_value
    FROM 
        last_name_letters
)
SELECT 
    SUM(ascii_value) AS hidden_code
FROM 
    ascii_values;
