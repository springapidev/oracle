SELECT
    last_name Employee,
    salary "Monthly Salary"
FROM
    employees
WHERE
    salary between 5000 and 12000
    and department_id in (20, 50);