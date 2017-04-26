use www;
SELECT 
    d.destination_name,
    tt.trip_type_name,
    t.trip_number,
    t.trip_date,
    CONCAT(e.nick_name, ' ', e.last_name) AS guide_name,
    e.mobile_phone AS guide_mobile_phone,
    ('414-555-1212') AS www_office_phone,
    t.late_arrival,
    t.departure_time,
    t.return_eta,
    gp.gathering_point_description
FROM
    trip_type tt
        JOIN
    trips t ON tt.trip_type_code = t.trip_type_code
        JOIN
    destination d ON t.destination_code = d.destination_code
        JOIN
    reservation r ON t.trip_number = r.trip_number
        JOIN
    gathering_point gp ON gp.gathering_point_id = t.gathering_point_id
        JOIN
    employees e ON t.guide_employee_id = e.employee_id
GROUP BY trip_number
ORDER BY destination_name , trip_type_name , trip_date;