-- Query to calculate 3-day moving average time spent on the website for users with user_type = 'user'
SELECT
    t.visited_on,
    ROUND(AVG(time_spent) OVER (ORDER BY t.visited_on ROWS BETWEEN 2 PRECEDING AND CURRENT ROW), 4) AS avg_time_spent
FROM
    traffic t
        JOIN
    users u ON t.user_id = u.id
WHERE
    u.user_type = 'user'
ORDER BY
    t.visited_on;