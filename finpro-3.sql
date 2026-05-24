WITH data_2023 AS (
  SELECT
    EXTRACT(MONTH FROM order_date) AS month_num,
    channel_type,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(after_discount) AS revenue
  FROM `tokopaedi.order_detail`
  WHERE is_valid = 1
    AND EXTRACT(YEAR FROM order_date) = 2023
  GROUP BY channel_type, month_num
  ORDER BY month_num
),

data_2024 AS (
  SELECT
    EXTRACT(MONTH FROM order_date) AS month_num,
    channel_type,
    COUNT(DISTINCT order_id) AS total_orders,
    SUM(after_discount) AS revenue
  FROM `tokopaedi.order_detail`
  WHERE is_valid = 1
    AND EXTRACT(YEAR FROM order_date) = 2024
  GROUP BY channel_type, month_num
  ORDER BY month_num
)

SELECT
  FORMAT_DATE('%B', DATE(2024, d24.month_num,1)) AS month,
  d24.channel_type AS channel,
  d23.total_orders AS total_orders_2023,
  CONCAT('Rp. ', FORMAT("%'d", CAST(d23.revenue AS INT64))) AS total_revenue_2023,
  d24.total_orders AS total_orders_2024,
  CONCAT('Rp. ', FORMAT("%'d", CAST(d24.revenue AS INT64))) AS total_revenue_2024,
  CONCAT(ROUND(SAFE_DIVIDE(d24.revenue - d23.revenue, d23.revenue) * 100,2),'%'
  ) AS growth_percentage
FROM data_2024 d24
LEFT JOIN data_2023 d23
  ON d24.channel_type = d23.channel_type
  AND d24.month_num = d23.month_num
ORDER BY d24.channel_type, d24.month_num;