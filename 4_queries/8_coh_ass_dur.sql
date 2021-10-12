SELECT cohorts.name as cohort ,sum(assistance_requests.completed_at -assistance_requests.started_at) as total_duration 
FROM assistance_requests 
join students on student_id = students.id
join cohorts on cohort_id = cohorts.id
Group by cohorts.name
ORDER BY total_duration ;