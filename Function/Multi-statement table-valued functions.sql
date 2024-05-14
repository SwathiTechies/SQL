--Multi-statement table-valued functions 
CREATE FUNCTION dbo.GetEmployeesInAgeRange
(
    @MinAge INT,
    @MaxAge INT
)
RETURNS @Employees TABLE
(
    EmployeeID INT,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE
)
AS
BEGIN
    INSERT INTO @Employees (EmployeeID, FirstName, LastName, DateOfBirth)
    SELECT EmployeeID, FirstName, LastName, DateOfBirth
    FROM Employee
    WHERE DATEDIFF(YEAR, DateOfBirth, GETDATE()) BETWEEN @MinAge AND @MaxAge;

    RETURN;
END;



SELECT *
FROM dbo.GetEmployeesInAgeRange(25, 35);
