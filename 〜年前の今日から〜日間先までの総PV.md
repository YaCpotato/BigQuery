```sql
SELECT
  date,
  SUM(totals.pageviews) as TotalPageviews
FROM `bigquery-public-data.google_analytics_sample.ga_sessions_*`
WHERE
  _TABLE_SUFFIX BETWEEN
      FORMAT_DATE('%Y%m%d',
        DATE_SUB(
          CURRENT_DATE('Asia/Tokyo'),
          INTERVAL 4 YEAR
        )
      ) 
      AND
      FORMAT_DATE('%Y%m%d',
        DATE_ADD(
          DATE_SUB(
            CURRENT_DATE('Asia/Tokyo'),
            INTERVAL 4 YEAR
          ), 
         INTERVAL 1 MONTH)
      ) 
        
GROUP BY date
ORDER BY date
```
