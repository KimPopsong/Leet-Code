SELECT
    name
FROM salesPerson
WHERE name NOT IN (
    SELECT salesPerson.name
    FROM orders
    RIGHT JOIN company USING (com_id)
    RIGHT JOIN salesPerson USING (sales_id)
    WHERE company.name = 'RED'
);
