# Write your MySQL query statement below
WITH user_count as (
    SELECT COUNT(*) as total_users
    FROM Users
    )

SELECT contest_id, 
       ROUND(COUNT(user_id) / total_users * 100, 2) as "percentage"
FROM Register
JOIN user_count
GROUP BY contest_id
ORDER BY percentage DESC, contest_id;
