

select * from [dbo].[EmployeeSalaries]
___ incorrect 
select * 
,LAST_VALUE(EmployeeName) over(order by salary desc) [Emp with Lowest Salary]
from EmployeeSalaries


select * 
,LAST_VALUE(EmployeeName) over(order by salary ) [Emp with Lowest Salary]
from EmployeeSalaries

__ correct 


select * 
,LAST_VALUE(EmployeeName) over(order by salary desc rows between unbounded preceding and unbounded following) [Emp with Lowest Salary]
from EmployeeSalaries


