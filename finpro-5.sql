WITH first_order AS (
  SELECT
    customer_id,
    MIN(order_date) AS first_order_date
  FROM `tokopaedi.order_detail`
  WHERE is_valid = 1
  GROUP BY customer_id
)

SELECT
  DATE_TRUNC(c.registration_date, MONTH) AS month_date,
  FORMAT_DATE('%b %y', DATE_TRUNC(c.registration_date, MONTH)) AS month,
  c.registration_channel,
  COUNT(DISTINCT c.customer_id) AS total_new_customers,
  ROUND(AVG(DATE_DIFF(DATE(f.first_order_date), c.registration_date, DAY)),2) AS avg_days_to_first_purchase
FROM `tokopaedi.customer_detail` c
JOIN first_order f
  ON c.customer_id = f.customer_id
WHERE EXTRACT(YEAR FROM c.registration_date) = 2024
GROUP BY month_date, month, c.registration_channel
ORDER BY month_date, c.registration_channel;
