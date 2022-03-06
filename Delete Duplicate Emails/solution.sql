#https://leetcode.com/problems/delete-duplicate-emails
delete from Person
where id not in
(select t.min_id from (select min(id) over(partition by email) as min_id from Person) as t)