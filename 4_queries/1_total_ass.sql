SELECT count(assistance_requests.*) as total_assistance, teachers.name
FROM assistance_requests
join teachers 
on assistance_requests.teacher_id = teachers.id
WHERE teachers.name ='Waylon Boehm'
GROUP BY teachers.name;

