use www;
DELETE FROM employees 
WHERE
    employee_id = 6;
DELETE FROM plays_role 
WHERE
    employee_id = 6;
DELETE FROM can_guide 
WHERE
    employee_id = 6;