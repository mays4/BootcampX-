SELECT cohorts.name as name ,avg(assistance_requests.completed_at -assistance_requests.started_at) as average_assistance_time
FROM assistance_requests 
join students on student_id = students.id
join cohorts on cohort_id = cohorts.id
Group by cohorts.name
ORDER BY average_assistance_time;