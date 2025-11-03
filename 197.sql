SELECT
    id
FROM weather AS w
WHERE temperature > (
    SELECT temperature
    FROM weather
    WHERE DATEDIFF(w.recordDate, recordDate) = 1
);
