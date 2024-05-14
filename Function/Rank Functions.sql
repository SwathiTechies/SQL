--Rank Functions

--ROW_NUMBER(): Assigns a unique sequential integer to each row within the partition according to the ORDER BY clause.
SELECT EmployeeID, FirstName, LastName, Salary,
       ROW_NUMBER() OVER (ORDER BY Salary DESC) AS RowNumber
FROM Employee;

--RANK(): Assigns a unique rank to each distinct row within the partition, with the same rank for identical values.
SELECT EmployeeID, FirstName, LastName, Salary,
       RANK() OVER (ORDER BY FirstName DESC) AS Rank
FROM Employee;

--DENSE_RANK(): Similar to RANK(), but assigns consecutive ranks to distinct rows within the partition, leaving no gaps between ranks.
SELECT EmployeeID, FirstName, LastName, Salary,
       DENSE_RANK() OVER (ORDER BY LastName DESC) AS DenseRank
FROM Employee;

Select * from Employee




