SELECT teachers.name as instructor, cohorts.name as cohort, count(assistance_requests)
FROM teachers
JOIN assistance_requests on teachers.id = teacher_id
JOIN students on student_id = students.id
JOIN cohorts on cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teachers.name;