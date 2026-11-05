

--Primary Key Constraint

--Case 1 : When new is to be created
create table test_pk_1 (
eid int primary key,
gender char(1),
age tinyint,
firstname varchar(256)
)

select * from test_pk_1


insert into test_pk_1 values(1,'M',23,'Mayank')

insert into test_pk_1 values(2,'f',25,'priya')

insert into test_pk_1 values (null,'M',25,'Raj')

truncate table test_pk_1

--Case 2 : Table Already exists
alter table test_pk_1
add primary key (age)

create table test_pk_2 (
SID int not null unique,
firstname nvarchar(256),
age tinyint not null
)

select * from test_pk_2



alter table test_pk_2
add primary key (sid,age)

alter table test_pk_2
add primary key (sid)

