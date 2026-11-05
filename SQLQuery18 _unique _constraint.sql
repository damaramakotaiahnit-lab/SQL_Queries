

create table test_unique (
SID int unique,
age tinyint not null,
firstname varchar(256) not null unique,
lastname varchar(256)
)


select * from test_unique

insert into test_unique values (1,22,'Mayank','Mehera')

insert into test_unique values (1,24,'mahesh','dama')

insert into test_unique values (null,34,'Akhilesh','mehera')

insert into test_unique values (null,54,'Nitin','Singh')


truncate table test_unique


alter table test_unique
add unique (lastname)
