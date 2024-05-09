--SQL Bug Fixing: Fix the JOIN
--https://www.codewars.com/kata/580fb94e12b34dd1c40001f0/sql

SELECT 
    job_title,
    ROUND(AVG(salary), 2)::float AS average_salary,
    COUNT(people_id) AS total_people,
    ROUND(SUM(salary), 2)::float AS total_salary
FROM 
    job
GROUP BY 
    job_title
ORDER BY 
    average_salary DESC;