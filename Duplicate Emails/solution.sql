# https://leetcode.com/problems/duplicate-emails
select Email  
from (select Email, count(*) as c
from Person
group by Email) as email_count
where c > 1
