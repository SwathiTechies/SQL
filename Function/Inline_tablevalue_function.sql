--Inline Table valued function
CREATE FUNCTION dbo.GetEmployeesAboveAge
(
    @AgeThreshold INT
)
RETURNS TABLE
AS
RETURN
(
    SELECT EmployeeID, FirstName, LastName, DateOfBirth
    FROM Employee
    WHERE DATEDIFF(YEAR, DateOfBirth, GETDATE()) > @AgeThreshold
);

SELECT *
FROM dbo.GetEmployeesAboveAge(30);


CREATE FUNCTION GetEmployeesByHireDateRange (@StartDate DATE, @EndDate DATE)
RETURNS TABLE
AS
RETURN
(
    SELECT EmployeeID, FirstName, LastName, HireDate
    FROM Employee
    WHERE HireDate BETWEEN @StartDate AND @EndDate
);


SELECT *
FROM dbo.GetEmployeesByHireDateRange('2010-01-01', '2015-12-31');
