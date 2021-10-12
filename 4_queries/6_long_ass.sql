
SELECT cohorts.name as name ,avg(completed_at - started_at) as average_longest_assistance_time
FROM assistance_requests 
join students on student_id = students.id
join cohorts on cohort_id = cohorts.id
Group by cohorts.name
ORDER BY average_longest_assistance_time desc
limit 1
;