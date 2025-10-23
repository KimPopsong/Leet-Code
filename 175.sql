SELECT
    firstname,
    lastname,
    city,
    state
FROM
    person
    LEFT JOIN address USING (personId);
