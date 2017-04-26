use www;
SELECT 
    d.destination_name,
    tt.trip_type_name,
    t.trip_number,
    t.trip_date,
    t.trip_capacity,
    CONCAT(e.nick_name, ' ', e.last_name) AS guide_name,
    COUNT(r.guest_id) AS guests_booked,
    (t.trip_capacity - COUNT(r.guest_id)) AS positions_available
FROM
    trip_type tt
        JOIN
    trips t ON tt.trip_type_code = t.trip_type_code
        JOIN
    destination d ON t.destination_code = d.destination_code
        JOIN
    reservation r ON t.trip_number = r.trip_number
        JOIN
    employees e ON t.guide_employee_id = e.employee_id
GROUP BY trip_number
ORDER BY d.destination_name , tt.trip_type_name , t.trip_date , t.trip_number;