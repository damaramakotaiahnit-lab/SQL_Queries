

select * from dbo.Sales 


select * into New_Table_1 from dbo.Sales

drop table New_Table_1

select productid,quantity into new_table_1 from dbo.Sales

select * from new_table_1

select productid,quantity,StoreID into new_table_1 from dbo.Sales

--
select * from dbo.Sales 

select * into New_Table_2 from dbo.Sales

drop table New_Table_2

select productid,quantity,StoreID into new_table_2 from dbo.Sales

select * from [dbo].[new_table_2]

 __
 
 
select top 0 * into new_table_2 from dbo.Sales  

select top 1 * into new_ table_3 from dbo.sales

drop table new_table_3

select * from new_table_3
  
insert into new_table_3 select * from dbo.Sales

select top 3 * into new_table_4 from dbo.Sales

select * from new_table_4

insert into new_table_4 select * from dbo.Sales



