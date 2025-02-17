
SELECT * FROM positions

16. What is the most common job title?

SELECT job_title, COUNT(employee_id) AS employee_count
FROM employees
LEFT JOIN positions ON employees.position_id = positions.position_id
GROUP BY job_title
ORDER BY employee_count DESC
LIMIT 1;

17. What is the least common job title?

SELECT job_title, employee_count
FROM (
    SELECT job_title, COUNT(employee_id) as employee_count
    FROM employees
    LEFT JOIN positions ON employees.position_id = positions.position_id
    GROUP BY job_title
) AS job_counts;






 




