SELECT day, count(name)
FROM assignments
group by day
ORDER BY day;