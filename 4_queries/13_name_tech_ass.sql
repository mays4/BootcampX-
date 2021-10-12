SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort ,count(assistance_requests.completed_at - assistance_requests.started_at) as total_assistances
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
WHERE cohorts.name = 'JUL02'
group by teachers.name , cohorts.name
ORDER BY teacher;