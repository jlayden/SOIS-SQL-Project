use www;
SELECT 
    d.destination_name,
    tt.trip_type_name,
    t.trip_number,
    t.trip_date,
    CONCAT(e.last_name, ', ', e.first_name) AS guide_name,
    CONCAT(g.last_name, ', ', g.first_name) AS guest_name,
    ex.exp_name AS guest_experience,
    g.age AS guest_age,
    g.weight AS guest_weight,
    g.swimmer AS guest_is_swimmer,
    g.mobile_phone AS guest_mobile_phone
FROM
    trip_type tt
        JOIN
    trips t ON tt.trip_type_code = t.trip_type_code
        JOIN
    destination d ON t.destination_code = d.destination_code
        JOIN
    reservation r ON t.trip_number = r.trip_number
        JOIN
    guests g ON r.guest_id = g.guest_id
        JOIN
    experience ex ON ex.exp_code = g.exp_code
        JOIN
    employees e ON t.guide_employee_id = e.employee_id
ORDER BY d.destination_name , tt.trip_type_name , t.trip_date , guest_name;