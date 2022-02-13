/*
https://www.hackerrank.com/challenges/placements/problem
*/

select s.Name from
Students as s join Friends as f on s.ID = f.ID
join Packages as p1 on s.ID = p1.ID
join Packages as p2 on f.Friend_ID = p2.ID
where p1.Salary < p2.Salary
order by p2.Salary;