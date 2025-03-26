SELECT 
    ROUND(SUM(tiv_2016), 2) AS tiv_2016
FROM
    (SELECT DISTINCT
        i1.pid
    FROM
        insurance i1
    JOIN insurance i2 ON i1.pid != i2.pid
        AND i1.tiv_2015 = i2.tiv_2015) sub1
        JOIN
    (SELECT 
        *
    FROM
        insurance
    GROUP BY lat , lon
    HAVING COUNT(*) <= 1) sub2 ON sub1.pid = sub2.pid
