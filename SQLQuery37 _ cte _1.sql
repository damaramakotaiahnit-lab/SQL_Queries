


/*
A Common Table Expression (CTE) in SQL is a temporary result set that you can reference within a 
SELECT, INSERT, UPDATE, or DELETE statement. CTEs are defined using the WITH keyword, 
and they can make complex queries easier to write, understand, and maintain by breaking them into simpler parts.
*/

use employee_details

select * from Employees

select * into #temp1 from Employees

select * from #temp1


__ ex__1 

With CTE AS (
select * from #temp1
)

select * from cte

__ ex__ 2

with Test_CTE as (
select employeeid,firstname from #temp1 where EmployeeID in (2,4,6,7)
)

select * from test_cte 


__ ex __ 3

with [Comm Table Expression] as (
select * from #temp1 where EmployeeID in (1,2,3)
)

select * into #temp2 from [Comm Table Expression]

select * from #temp2

__ ex __ 4 

with CTE_1 as (
select * from #temp1 where EmployeeID in (2,4,6,9)
)

update #temp1 set employeeid = 101 where employeeid in (select distinct employeeid from cte_1)

--
select * from #temp1

__ ex __ 5 

with cte_2 as (
select * from #temp1 where EmployeeID = 1
)

delete from #temp1 where EmployeeID in (select distinct employeeid from cte_2)

select * from #temp1
  
  __ ex 6__ 

  with cte_3 as (
select * from #temp1 where EmployeeID in (101)
)

insert into #temp1 select * from cte_3
  

  select * from #temp1  
