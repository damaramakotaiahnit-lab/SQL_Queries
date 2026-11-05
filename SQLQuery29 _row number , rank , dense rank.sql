


CREATE TABLE Students (
    student_name VARCHAR(100),
    subject VARCHAR(100),
    marks INT
);


select * from Students


INSERT INTO Students (student_name, subject, marks)
VALUES 
-- Marks for Alice
('Alice', 'Math', 85),
('Alice', 'Science', 88),
('Alice', 'English', 92),

-- Marks for Bob
('Bob', 'Math', 90),
('Bob', 'Science', 78),
('Bob', 'English', 85),

-- Marks for Charlie
('Charlie', 'Math', 85),
('Charlie', 'Science', 82),
('Charlie', 'English', 80),

-- Marks for David
('David', 'Math', 92),
('David', 'Science', 91),
('David', 'English', 89),

-- Marks for Eve
('Eve', 'Math', 90),
('Eve', 'Science', 85),
('Eve', 'English', 87),

-- Marks for Frank
('Frank', 'Math', 75),
('Frank', 'Science', 72),
('Frank', 'English', 78),

-- Marks for Grace
('Grace', 'Math', 85),
('Grace', 'Science', 89),
('Grace', 'English', 90);


select * from Students

select *,ROW_NUMBER() over(order by marks desc) as [Row Number]
from Students

select *,rank() over(order by marks desc) as [Rank Function]
from Students

select *,DENSE_RANK() over(order by marks desc) [Dense Rank]
from Students


select *,ROW_NUMBER() over(order by marks) as [Row Number]
from Students

select *,rank() over(order by marks ) as [Rank Function]
from Students

select *,DENSE_RANK() over(order by marks ) [Dense Rank]
from Students

--Row_Number -> In case of a tie row numbers are assigned randomly
select *,ROW_NUMBER() over(order by marks asc) as [Row Number]
from Students

--Rank -> if there's a tie next rank/ranks will be skipped
select *,rank() over(order by marks asc) as [Rank Function]
from Students

--Dense_Rank -> if there's a tie ranks will not be skipped
select *,DENSE_RANK() over(order by marks asc) [Dense Rank]
from Students



select *, ROW_NUMBER () over (partition by subject order by marks desc)  [row number desc] from Students


select *, ROW_NUMBER () over (partition by subject order by marks asc)[row number asc]  from Students


select *, ROW_NUMBER () over ( partition by student_name  order by marks desc) [row number desc] from students


select *, ROW_NUMBER () over ( partition by student_name  order by marks asc) [row number desc] from students

select *, rank () over (partition by student_name order by marks desc) [rank desc] from Students


select *, rank () over (partition by subject order by marks desc) [rank desc] from Students


select *, DENSE_RANK () over ( partition by subject order by marks desc) [dense_rank] from Students
