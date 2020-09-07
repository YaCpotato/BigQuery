```sql
DECLARE startDate STRING;
DECLARE endDate STRING;

SET startDate = (
  FORMAT_DATE('%Y%m%d',
    DATE_SUB(
      CURRENT_DATE('Asia/Tokyo'),
        INTERVAL 4 YEAR
      )
    ) 
  );

SET endDate = (
  FORMAT_DATE('%Y%m%d',
    DATE_ADD(
      DATE_SUB(
        CURRENT_DATE('Asia/Tokyo'),
          INTERVAL 4 YEAR
        ), 
      INTERVAL 1 MONTH)
    ) 
  );
```
