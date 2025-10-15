select*
from cust
where age is null

# find the cust whose city is not null
select*
from cust
where city is not null

drop table student

create table stud
(
 sid    int,
 sname varchar(10),
 s1    varchar(10),
 s2    varchar(10),
 s3    varchar(10)
 )

 insert into stud values (11,'swati','hindi','null','mar'),
 (12, 'sneha', 'geo','null','null'),
 (13, 'shradha','null','null','null')

 select*
 from emp

 select* from covid_data
 drop table covid_data


 create table covid
 (
  dateid             varchar(20),
  state              varchar(50),
  totalsamples       varchar(30),
  negative           varchar(20),
  positive           varchar(20)
  )

 bulk insert covid
 from "C:\Users\pc\Downloads\covid_india.csv"
 with (format = 'csv', firstrow = 2, fieldterminator = ','


 select*
 from covid_data
 drop table covid

 select*
 from covid_india

 ALTER TABLE covid_india
ALTER COLUMN Negative INT;

EXEC sp_help 'covid_india';

ALTER TABLE covid_india
ALTER COLUMN Negative INT;

USE [DB 4 pm];
GO

SELECT covid_india FROM sys.databases;

CREATE TABLE covid_india (
    State VARCHAR(100),
    Positive INT,
    Negative INT,       -- ✅ changed to INT instead of SMALLINT
    Deaths INT,
    Recovered INT,
    Date DATE
);

BULK INSERT covid_india
FROM 'C:\Users\pc\OneDrive\Desktop\temp\covid_india.csv'
WITH (
    FORMAT = 'CSV',
    FIRSTROW = 2,
    FIELDTERMINATOR = ',',
    ROWTERMINATOR = '\n'
);
