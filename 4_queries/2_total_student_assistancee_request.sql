SELECT count(assistance_requests) as total_assistances, name
FROM students
JOIN assistance_requests on student_id = students.id
WHERE name = 'Elliot Dickinson'
GROUP BY name;