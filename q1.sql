SELECT
    7 AS month,
    COUNT(DISTINCT july.user_id) AS monthly_active_users
FROM user_actions july
JOIN user_actions june
    ON july.user_id = june.user_id
WHERE july.event_type IN ('sign-in','comment','like')
  AND june.event_type IN ('sign-in','comment','like')
  AND july.event_date >= DATE '2022-07-01'
  AND july.event_date < DATE '2022-08-01'
  AND june.event_date >= DATE '2022-06-01'
  AND june.event_date < DATE '2022-07-01';
