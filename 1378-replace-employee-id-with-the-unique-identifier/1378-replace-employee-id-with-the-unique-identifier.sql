# Write your MySQL query statement below

SELECT CASE WHEN unique_id IS NULL THEN NULL ELSE unique_id END AS unique_id, name
FROM EmployeeUNI eu
RIGHT JOIN Employees e ON eu.id = e.id
