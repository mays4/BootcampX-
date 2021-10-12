Select  day , count(*) as  number_of_assignments , sum(duration) as duration
from assignments 
Group by day,duration
ORDER by day 
;