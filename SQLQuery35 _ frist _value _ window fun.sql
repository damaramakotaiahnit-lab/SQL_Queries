

create database [window fun]

use [window fun]

CREATE TABLE EmployeeSalaries (
    EmployeeID INT,
    EmployeeName VARCHAR(50),
    Salary INT,
    Department VARCHAR(50)
);


INSERT INTO EmployeeSalaries (EmployeeID, EmployeeName, Salary, Department)
VALUES
(1, 'Alice', 50000, 'HR'),
(2, 'Bob', 60000, 'HR'),
(3, 'Charlie', 55000, 'HR'),
(4, 'David', 75000, 'Finance'),
(5, 'Eve', 80000, 'Finance'),
(6, 'Frank', 72000, 'Finance'),
(7, 'Grace', 90000, 'IT'),
(8, 'Heidi', 95000, 'IT'),
(9, 'Ivan', 87000, 'IT'),
(10, 'venkat', 90000,'IT');



____

select * from [dbo].[EmployeeSalaries]

select *
,FIRST_VALUE(Salary) over(order by salary asc) 
from EmployeeSalaries



select *
,FIRST_VALUE(Salary) over(order by salary asc) [Minimum Salary]
from EmployeeSalaries

select *
,FIRST_VALUE(Salary) over(order by salary ) [Minimum Salary]
from EmployeeSalaries

select *
,FIRST_VALUE(Salary) over(order by salary desc )  [Minimum Salary]
from EmployeeSalaries


select *
,FIRST_VALUE(EmployeeName) over(order by salary asc) [Emp with Minimum Salary]
,FIRST_VALUE(Salary) over(order by salary asc) [Minimum Salary]
from EmployeeSalaries



select * from [dbo].[EmployeeSalaries]

select * 
,FIRST_VALUE(EmployeeID) over(partition by department order by salary) [First Value]
from EmployeeSalaries



select * 
,FIRST_VALUE(EmployeeID) over(partition by department order by salary desc) [First Value EID]
,FIRST_VALUE(EmployeeName) over(partition by department order by salary desc) [First Value EName]
from EmployeeSalaries

select * 
,FIRST_VALUE(EmployeeID) over(partition by department order by salary ) [First Value EID]
,FIRST_VALUE(EmployeeName) over(partition by department order by salary ) [First Value EName]
from EmployeeSalaries
