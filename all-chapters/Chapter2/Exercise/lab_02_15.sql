SELECT
    last_name Employee,
    salary "Monthly Salary",
    commission_pct
FROM
    employees
WHERE
    commission_pct = 20/100;