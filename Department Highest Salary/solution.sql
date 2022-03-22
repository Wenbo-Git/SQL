/*
https://leetcode.com/problems/department-highest-salary
*/

/* solution #1: using window function */
select Department, Employee, Salary
from (select d.name as Department, 
      e.name as Employee, 
      e.salary as Salary, 
      max(e.salary) over(partition by d.name) as max_salary 
      from Employee as e join Department as d on e.departmentId = d.id) as temp_table
where Salary = max_salary

/* solution #2: using correlated subquery */
select d1.name as Department, e1.name as Employee, e1.salary as Salary
from Employee as e1 join Department as d1 on e1.departmentId = d1.id
where e1.salary = 
(select max(e2.salary) from 
 Employee as e2 join Department as d2 on e2.departmentId = d2.id 
 where d2.name = d1.name)