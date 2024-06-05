SELECT t1.id, t1.value, SUM(t2.value) AS running_sum
FROM your_table t1
JOIN your_table t2 ON t2.id <= t1.id
GROUP BY t1.id, t1.value
ORDER BY t1.id;