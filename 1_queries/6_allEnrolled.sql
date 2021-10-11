SELECT name, id, cohort_id
FROM students
WHERE end_date is Null;
ORDER BY cohort_id;