


select * from dbo.Sales

select max(totalamount) [Maximum Amount]  from dbo.Sales

select min (totalamount) [Maximum Amount] from dbo.Sales


select max(saledate) [Max SalesDate] from dbo.Sales


select min(saledate) [Min SalesDate] from dbo.Sales

select max(paymentmethod) [Max Pay method] from dbo.Sales

select min(paymentmethod) [Min Pay method] from dbo.Sales

--Maximum Quantity sold for each productID
select productid,max(quantity) [Maximum Quantity] from dbo.Sales
group by productid

--Minimum Quantity sold for each productID
select productid,min(quantity) [Maximum Quantity] from dbo.Sales
group by productid

select * from dbo.Sales

--Maximum Total Amount for all distinct dates in saledate column
select saledate,max(totalamount) [Maximum Total Amount] from dbo.Sales
group by saledate

--Maximum Total Amount for all distinct dates in saledate column
select saledate,min(totalamount) [Maximum Total Amount] from dbo.Sales
group by saledate