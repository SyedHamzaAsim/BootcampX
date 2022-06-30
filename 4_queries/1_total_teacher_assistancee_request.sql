SELECT count(assistance_requests) as total_assistances, name
FROM teachers
JOIN assistance_requests on teacher_id = teachers.id
WHERE name = 'Waylon Boehm'
GROUP BY teachers.name;