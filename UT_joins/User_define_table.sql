--User Define Table 
-- Here I am created the SP for insert the data using the UT table in the main table.
--UT table is mainly using for insert multiple data at a time.

--USER DEFINE TABLE

CREATE TYPE [DBO].[UT_Employee] AS TABLE(
	[EmployeeID] [INT] NOT NULL,
	[FirstName] [VARCHAR](100) NULL,
	[LastName] [VARCHAR](100) NULL,
	[Gender] [CHAR](10) NULL,
	[DateOfBirth] [DATE] NULL,
	[DepartmentID] [INT] NULL,
	[Salary] [DECIMAL](10, 2) NULL,
	[HireDate] [DATE] NULL
)

--DROP TYPE [DBO].[UT_Employee]



--SP
CREATE OR ALTER PROCEDURE SP_EmployeeCrud
(
	@EmployeeDetails [DBO].[UT_Employee] readonly
)
AS 
BEGIN
	Insert into Employee (EmployeeID, FirstName, LastName, Gender, DateOfBirth, DepartmentID, Salary, HireDate)
	SELECT EmployeeID, FirstName, LastName, Gender, DateOfBirth, DepartmentID, Salary, HireDate
	FROM @EmployeeDetails

END

--Insert into UT Table
DECLARE @s AS [DBO].[UT_Employee];
INSERT INTO @s (EmployeeID, FirstName, LastName, Gender, DateOfBirth, DepartmentID, Salary, HireDate) 
VALUES (9, 'raja', 'Mohan', 'M', '09-03-1996',3,80000, '05-05-2017');
EXEC SP_EmployeeCrud @s

Select * from Employee

--DROP PROCEDURE SP_EmployeeCrud