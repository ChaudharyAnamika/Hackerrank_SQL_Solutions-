--Ques
Write a query that prints a list of employee names (i.e.: the name attribute) for employees in Employee having a salary greater than $2000 per month who have been employees for less than 10 months. Sort your result by ascending employee_id.
--Ans
SELECT name
FROM employee
where salary >2000 and months<10
ORDER BY employee_id ASC;
