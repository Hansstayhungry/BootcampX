SELECT cohorts.name AS name, assistance_requests.avg(completed_at - started_at) as average_assistance_time
FROM cohorts
JOIN students on cohorts.id = students.cohort_id
JOIN assistance_requests on assistance_requests.student_id = students.id
GROUP BY cohorts.name
ORDER BY average_assistance_time