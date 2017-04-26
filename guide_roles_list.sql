use www;
SELECT 
    e.nick_name, e.last_name, r.role_name
FROM
    employees e
        JOIN
    plays_role pr ON pr.employee_id = e.employee_id
        JOIN
    role r ON pr.role_code = r.role_code
ORDER BY e.nick_name , r.role_name;