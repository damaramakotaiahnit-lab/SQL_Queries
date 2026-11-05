
select * from dbo.Employees

select * into #4 from dbo.Employees

select * from #4

delete from #4
where LastName = '' or Department = '0'

select * into #5 from dbo.Employees

select * from #5

delete from #5

select * from #4

truncate table #4

drop table #4

