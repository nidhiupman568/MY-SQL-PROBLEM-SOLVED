# Find the maximum number of turns among rows where 'tot_weight <= 1000'.

WITH CTE AS (
    SELECT 
        turn, person_name, weight,
        SUM(weight) OVER(ORDER BY turn ASC) AS tot_weight 
    FROM Queue
    ORDER BY turn
)
SELECT person_name
FROM Queue q
WHERE q.turn = (SELECT MAX(turn) FROM CTE WHERE tot_weight <= 1000);
