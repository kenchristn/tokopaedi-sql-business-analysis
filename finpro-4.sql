SELECT 
  channel_source, 
  COUNT(*) AS total_events, 
  COUNT(DISTINCT order_id) AS total_orders, 
  CONCAT(ROUND(SAFE_DIVIDE(COUNT(DISTINCT order_id), COUNT(*)) * 100,2),'%') AS conversion_rate 
FROM `tokopaedi.funnel_detail`
WHERE 
  LOWER(event) = 'organic' 
  AND DATE(funnel_date) BETWEEN '2024-01-01' AND '2024-12-31'
GROUP BY channel_source ORDER BY conversion_rate DESC;