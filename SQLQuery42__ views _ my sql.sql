

select * from Employees

select * into emp_bkp from Employees

select * from emp_bkp

_____

create view View_1 as (
select * from emp_bkp
)

select * from View_1
--**
update View_1
set EmployeeID = 200


--**




Create view View_2 as (
select EmployeeID,FirstName,LastName,Email,DepartmentID,HireDate from emp_bkp
)

select * from View_2

----------

drop view View_2

__


select * from View_1

select * from View_2

