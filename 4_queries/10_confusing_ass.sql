Select assignments.id as id, name , day , chapter,count(assistance_requests.*) as total_requests 
from assignments 
join assistance_requests on assignment_id = assignments.id 
group by assignments.id
ORDER by total_requests DESC
;