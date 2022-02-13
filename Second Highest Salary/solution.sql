# https://leetcode.com/problems/second-highest-salary
select max(Employee.Salary) as SecondHIghestSalary 
from Employee 
where Employee.Salary < (select max(Employee.Salary) from Employee)
