SELECT teachers.name as teacher ,students.name as student, assignments.name as assisgnmet,(assistance_requests.completed_at -assistance_requests.started_at) as duration 
FROM assistance_requests
join teachers
on assistance_requests.teacher_id= teachers.id
join students on assistance_requests.student_id = students.id
join assignments on assistance_requests.assignment_id = assignments.id

ORDER BY  duration;