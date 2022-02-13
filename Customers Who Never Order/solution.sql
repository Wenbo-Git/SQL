/* 
https://leetcode.com/problems/customers-who-never-order
*/
select c.name as Customers
from Customers as c left join Orders as o on c.id = o.customerId
where o.id is Null