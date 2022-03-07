https://leetcode.com/problems/rising-temperature
select t.id
from (select id, recordDate, temperature,
      lag(temperature, 1) over(order by recordDate) as prev_temp, 
      lag(recordDate, 1)  over(order by recordDate) as prev_day from weather) as t
where t.temperature > t.prev_temp and DATEDIFF(t.recordDate, t.prev_day) = 1