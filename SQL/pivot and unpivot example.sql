-- region	month	sales
-- East	Jan	100
-- West	Jan	150
-- East	Feb	200
-- West	Feb	250
-- East	Mar	300
-- West	Mar	350


Select 
from sql
pivot (
    sum(sales) for month in ('Jan','Feb','Mar')
) as PivotTable
region	Jan	Feb	Mar
East	100	200	300
West	150	250	350


Select 
from sql
pivot (
    sum(sales) for month in (any order for month)
) as PivotTable

select 
*
unpivot (sales for month in (Jan,Feb,Mar))