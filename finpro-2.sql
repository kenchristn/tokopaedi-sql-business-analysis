SELECT
  pd.category,
  SUM(IF(EXTRACT(YEAR FROM od.order_date) = 2020, od.quantity, 0)) AS qty_2020,
  SUM(IF(EXTRACT(YEAR FROM od.order_date) = 2021, od.quantity, 0)) AS qty_2021,
  SUM(IF(EXTRACT(YEAR FROM od.order_date) = 2022, od.quantity, 0)) AS qty_2022,
  SUM(IF(EXTRACT(YEAR FROM od.order_date) = 2023, od.quantity, 0)) AS qty_2023,
  SUM(IF(EXTRACT(YEAR FROM od.order_date) = 2024, od.quantity, 0)) AS qty_2024
FROM `tokopaedi.order_detail` od
JOIN `tokopaedi.product_detail` pd
  ON od.sku_id = pd.sku_id
WHERE DATE(od.order_date) BETWEEN '2020-01-01' AND '2024-12-31'
  AND od.is_valid = 1
GROUP BY pd.category
ORDER BY qty_2020 DESC;