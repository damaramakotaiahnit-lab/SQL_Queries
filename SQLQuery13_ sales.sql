


create database sales;

USE Sales;

CREATE TABLE Customers
(
    CustomerID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName VARCHAR(50) NOT NULL,
    LastName VARCHAR(50) NOT NULL,
    Gender CHAR(1) CHECK (Gender IN ('M','F')),
    Phone VARCHAR(20),
    Email VARCHAR(100) UNIQUE,
    City VARCHAR(50),
    State VARCHAR(50),
    Country VARCHAR(50),
    CreatedDate DATETIME DEFAULT GETDATE()
);


INSERT INTO Customers
(
    FirstName,
    LastName,
    Gender,
    Phone,
    Email,
    City,
    State,
    Country
)
VALUES
('John','Smith','M','9876543210','john.smith@email.com','New York','New York','USA'),
('Mary','Johnson','F','9876543211','mary.johnson@email.com','Chicago','Illinois','USA'),
('David','Brown','M','9876543212','david.brown@email.com','Dallas','Texas','USA'),
('Linda','Wilson','F','9876543213','linda.wilson@email.com','Seattle','Washington','USA'),
('James','Taylor','M','9876543214','james.taylor@email.com','Boston','Massachusetts','USA'),
('Patricia','Anderson','F','9876543215','patricia.anderson@email.com','Miami','Florida','USA'),
('Robert','Thomas','M','9876543216','robert.thomas@email.com','Phoenix','Arizona','USA'),
('Jennifer','Moore','F','9876543217','jennifer.moore@email.com','Denver','Colorado','USA'),
('Michael','Martin','M','9876543218','michael.martin@email.com','Atlanta','Georgia','USA'),
('Elizabeth','White','F','9876543219','elizabeth.white@email.com','San Diego','California','USA');


select * from Customers

select firstname from Customers

select firstname,state from Customers

select firstname,LastName from Customers

select CustomerID ,concat(firstname,' ',LastName) from Customers

select customerID,concat(firstname,' ',LastName) [Full Name] from Customers


select customerID,concat(firstname,' ',LastName) as [Full Name] from Customers



USE Sales;

CREATE TABLE SalesRecords
(
    SaleID INT IDENTITY(1,1) PRIMARY KEY,
    CustomerName VARCHAR(50),
    ProductName VARCHAR(50),
    Quantity INT,
    Price DECIMAL(10,2),
    SaleDate DATE
);

INSERT INTO SalesRecords
(CustomerName, ProductName, Quantity, Price, SaleDate)
VALUES
('John','Laptop',2,55000,'2026-08-01'),
('Mary','Mouse',5,800,'2026-08-02'),
('David','Keyboard',3,1500,'2026-08-03'),
('Linda','Monitor',2,12000,'2026-08-04'),
('James','Printer',1,18000,'2026-08-05');
 

 SELECT * FROM SalesRecords;

 select distinct customername from SalesRecords

 select distinct price from SalesRecords

 select distinct * from SalesRecords

 
select * into #temp1
from [dbo].[Customers]

select * from #temp1

select * from [dbo].[Customers]


select * into ##temp2 
from [dbo].[SalesRecords]

select * from ##temp2

select * from [dbo].[SalesRecords]


select * from #temp1

select * from ##temp2


select * from [dbo].[SalesRecords]
where saleID = 2

select saleID,customerName from [dbo].[SalesRecords]
where saleID = 5

select * from [dbo].[SalesRecords] where Price>=15000.00

select customerName,productName,quantity,price
from [dbo].[SalesRecords] where Price<55000.00

select distinct customerName,PRODUCTName,quantity,price
from [dbo].[SalesRecords] where price<75000.00

select * from [dbo].[SalesRecords]

select * from [dbo].[SalesRecords]
order by Price

select * from [dbo].[SalesRecords]
order by Price desc

select * from [dbo].[SalesRecords]
order by CustomerName asc,Price desc

select * from [dbo].[SalesRecords]
order by Quantity asc,Price desc





