SELECT count(assistance_requests.*) as total_assistance, students.name
FROM assistance_requests
join students 
on assistance_requests.student_id = students.id
WHERE students.name ='Elliot Dickinson'
GROUP BY students.name;
