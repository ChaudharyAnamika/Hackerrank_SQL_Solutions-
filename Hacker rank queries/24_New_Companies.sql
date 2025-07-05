SELECT
    c.company_code,
    c.founder,
    COALESCE(lm.count_lead_managers, 0) AS total_lead_managers,
    COALESCE(sm.count_senior_managers, 0) AS total_senior_managers,
    COALESCE(m.count_managers, 0) AS total_managers,
    COALESCE(e.count_employees, 0) AS total_employees
FROM
    Company c
LEFT JOIN
    (
        SELECT company_code, COUNT(DISTINCT lead_manager_code) AS count_lead_managers
        FROM Lead_Manager
        GROUP BY company_code
    ) lm ON c.company_code = lm.company_code
LEFT JOIN
    (
        SELECT company_code, COUNT(DISTINCT senior_manager_code) AS count_senior_managers
        FROM Senior_Manager
        GROUP BY company_code
    ) sm ON c.company_code = sm.company_code
LEFT JOIN
    (
        SELECT company_code, COUNT(DISTINCT manager_code) AS count_managers
        FROM Manager
        GROUP BY company_code
    ) m ON c.company_code = m.company_code
LEFT JOIN
    (
        SELECT company_code, COUNT(DISTINCT employee_code) AS count_employees
        FROM Employee
        GROUP BY company_code
    ) e ON c.company_code = e.company_code
ORDER BY
    c.company_code ASC;

SELECT
    c.company_code,
    c.founder,
    COALESCE(lm.count_lead_managers, 0) AS total_lead_managers,
    COALESCE(sm.count_senior_managers, 0) AS total_senior_managers,
    COALESCE(m.count_managers, 0) AS total_managers,
    COALESCE(e.count_employees, 0) AS total_employees
FROM
    Company c
