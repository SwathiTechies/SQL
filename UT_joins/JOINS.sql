--Joins

Select * from Employee
Select * from Department
Insert into Employee values(8, 'Srini', 'Venkatesh', 'M', '1997-07-01', 8, 90000, '2018-05-09')
Insert into Department values(4, 'HR', 'India')
--Select * from [dbo].[AuditTable]

--LEFT JOIN
SELECT D.DepartmentID, D. DepartmentName, D.Location
	FROM Department D
	LEFT JOIN Employee E ON
	D.DepartmentID = E.DepartmentID

SELECT *
	FROM Employee E
	LEFT JOIN Department D ON 
	E.DepartmentID = D.DepartmentID

--RIGHT JOIN
SELECT *
	FROM Employee E
	RIGHT JOIN Department D ON 
	E.DepartmentID = D.DepartmentID

--INNER JOIN
SELECT *
	FROM Employee E
	INNER JOIN Department D ON 
	E.DepartmentID = D.DepartmentID

--FULL OUTER JOIN
SELECT *
	FROM Employee E
	FULL OUTER JOIN Department D ON 
	E.DepartmentID = D.DepartmentID

--SELF JOIN
SELECT E.EmployeeID as EmployeeId, E. FirstName as Name, E.DepartmentId as Department
	FROM Employee E
	JOIN Employee E1 ON E.DepartmentID = E1.DepartmentID
	WHERE E1.EmployeeID = E.EmployeeID

--CROSS JOIN
SELECT * 
	FROM Employee
	CROSS JOIN Department

