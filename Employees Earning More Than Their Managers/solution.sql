# https://leetcode.com/problems/employees-earning-more-than-their-managers
select Employee from 
(select a.name as Employee, a.salary as employee_salary, b.salary as manager_salary 
from Employee as a join Employee as b 
where a.managerId = b.id) as merged_table
where employee_salary > manager_salary 