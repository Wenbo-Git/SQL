/*
https://leetcode.com/problems/department-top-three-salaries
*/

with t as(select d.name as Department,
e.name as Employee,
e.salary as Salary,
dense_rank() over (partition by d.name order by e.salary desc) as rk
from Employee as e join Department as d on e.departmentId = d.id)
select t.Department, t.Employee, t.Salary
from t where t.rk <= 3