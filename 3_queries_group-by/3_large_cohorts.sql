SELECT cohorts.name as cohort_name, count(students) as total_students
FROM cohorts
JOIN students on cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students) >= 18
ORDER BY count(students);