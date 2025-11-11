SELECT
    activity_date AS day,
    COUNT(DISTINCT user_id) AS active_users
FROM
    activity
WHERE
    activity_date >= '2019-06-28' and activity_date <= '2019-07-27'
GROUP BY
    activity_date;
