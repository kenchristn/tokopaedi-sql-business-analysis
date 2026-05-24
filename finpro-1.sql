SELECT
  FORMAT_DATE('%b %y', transaction_date) AS month,
  COUNT(DISTINCT transaction_id) AS trx_count,
  CONCAT('Rp. ', FORMAT("%'d", CAST(SUM(total_paid) AS INT64))) AS total_sales
FROM `tokopaedi.transaction_detail`
WHERE EXTRACT(YEAR FROM transaction_date) = 2024
GROUP BY month
ORDER BY MIN(transaction_date);