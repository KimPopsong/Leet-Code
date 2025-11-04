SELECT 
    CASE
        WHEN COUNT(*) <= 0 THEN NULL
        ELSE t.num
    END AS num
FROM (
        SELECT *
        FROM mynumbers
        GROUP BY num
        HAVING COUNT(*) < 2
        ORDER BY num DESC
        LIMIT 1
     ) AS t;
