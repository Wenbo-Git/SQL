/*
https://leetcode.com/problems/department-highest-salary
*/

select Department, Employee, Salary
from (select d.name as Department, 
      e.name as Employee, 
      e.salary as Salary, 
      max(e.salary) over(partition by d.name) as max_salary 
      from Employee as e join Department as d on e.departmentId = d.id) as temp_table
where Salary = max_salary