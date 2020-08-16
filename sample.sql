SELECT 
  visitId,
  totals.hits,
  date
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
GROUP BY visitId,totals.hits,date
ORDER BY date
LIMIT 10
