SELECT  * FROM exit_interviews


8.How many employees left the company for a reason that wasn’t being fired?


SELECT COUNT(employees.employee_id) 
FROM employees
LEFT JOIN exit_interviews
ON employees.employee_id=exit_interviews.employee_id
WHERE leave_date!=''
AND (reason_for_leaving!='fired' OR reason_for_leaving IS NULL)
;


