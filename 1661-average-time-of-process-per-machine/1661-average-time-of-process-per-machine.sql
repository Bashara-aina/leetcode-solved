# Write your MySQL query statement below

SELECT machine_id,
ROUND(
(SELECT AVG(a1.timestamp) FROM Activity a1 WHERE a1.activity_type = 'end' AND a1.machine_id = a.machine_id) - 
(SELECT AVG(a1.timestamp) FROM Activity a1 WHERE a1.activity_type = 'start' AND a1.machine_id = a.machine_id)
, 3) AS processing_time
FROM Activity a
GROUP BY machine_id
ORDER BY machine_id ASC
