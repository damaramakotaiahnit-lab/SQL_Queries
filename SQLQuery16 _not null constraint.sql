

create database constraints

use constraints

create table test_not_null ( 
EID int not null,
age tinyint,
firstname varchar(256)
)

select * from test_not_null

create table test(
EID int not null,
age tinyint,
firstname varchar(255),
lastname varchar(60)
)

select * from test


select * from INFORMATION_SCHEMA.columns 
where TABLE_NAME like 'test_not_null'


select * from INFORMATION_SCHEMA.columns 
where TABLE_NAME like 'test'


insert into test_not_null values (1,23,'ram')

insert into test_not_null values (null,23,'Mayank')

insert into test_not_null values(2,null,'Raj')


select * from test_not_null

select * from test
