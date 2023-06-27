SELECT name, id, cohort_id
from students
where end_date is null
ORDER BY cohort_id