


select * from dbo.Employees

select * into #1 from dbo.Employees

select * from #1

update #1
set Department = 'HR'
where Department is null

update #1
set Salary = 89000,HireDate = '2023-01-01'
where EmployeeID = 7

select * from #1 where EmployeeID = 7

select * into #2 from dbo.Employees

select * from #2

update #2
set Department = 'Finance'


select * into #3 from dbo.Employees


update #3
set salary = '90000'


select * from #3