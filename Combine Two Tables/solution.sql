# https://leetcode.com/problems/combine-two-tables
select P.FirstName as FirstName, P.LastName as LastName, A.City as City, A.State as State  
from Person as P left join Address as A
on P.PersonId = A.PersonId
