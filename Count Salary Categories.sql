SELECT
    category,
    SUM(accounts_count) AS accounts_count
FROM 
(
    SELECT
        CASE 
            WHEN income < 20000 THEN 'Low Salary'
            WHEN income BETWEEN 20000 AND 50000 THEN 'Average Salary'
            ELSE 'High Salary'
        END AS category,
        COUNT(*) AS accounts_count
    FROM 
        Accounts 
    GROUP BY category

    UNION SELECT 'Low Salary', 0
    
    UNION SELECT 'Average Salary', 0
    
    UNION SELECT 'High Salary', 0
    
) AS grouped_categories
GROUP BY category;
