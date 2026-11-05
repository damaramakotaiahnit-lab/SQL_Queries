

create table append1 (C1 int,C2 nvarchar(255),C3 int)
insert into append1 values (1,'A',7),
(2,'B',8),
(3,'C',9)



create table append2 (C1 int,C2 nvarchar(255),C3 int)
insert into append1 values (11,'AA',17),
(2,'B',8),
(33,'C1',91)


select * from append1

select * from append2

select c1,c2,c3 from append1
union all
select c1,c2,c3 from append2

select c1,c2,c3 from append1
union 
select c1,c2,c3 from append2

select c1,c2,c3 from append1 --C1 is int, C2 is nvarchar, C3 is int
union 
select c1,C3,C2 from append2

select c1,c2,c3 from append1 --C1 is int, C2 is nvarchar, C3 is int
union 
select c1,C2,C3 from append2


select c1 [Column1],c2 [Column2],c3 [Column3] from append1
union
select c1 [Col1],c2 [Col2],c3 [Col3] from append2