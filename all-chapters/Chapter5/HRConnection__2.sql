SELECT
    l.city,
    d.department_name
FROM
    locations l
    JOIN departments d USING ( location_id )
WHERE
    location_id = 1400;