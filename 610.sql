SELECT *,
CASE
    WHEN greatest(x, y, z) < (x + y + z - greatest(x, y, z)) THEN 'Yes'
    ELSE 'No'
END AS 'triangle'
FROM triangle;
