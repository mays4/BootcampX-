SELECT students.name AS student_name , cohorts.name As cohort_name , cohorts.start_date as cohort_start_date,students.start_date As student_start_date
from students,cohorts 
where students.cohort_id = cohorts.id AND cohorts.start_date != students.start_date
order by cohort_start_date;