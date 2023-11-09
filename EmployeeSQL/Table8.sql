SELECT last_name, COUNT(*) as name_count
FROM Employee
GROUP BY last_name
ORDER BY name_count DESC;
