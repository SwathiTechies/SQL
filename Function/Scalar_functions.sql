--Scalar Functions
CREATE FUNCTION dbo.CalculateAge (@DateOfBirth DATE)
RETURNS INT
AS
BEGIN
	DECLARE @Age INT;

	SET @Age = DATEDIFF(YEAR, @DateOfBirth, GETDATE());

	RETURN @Age;
END;

SELECT FirstName
	,LastName
	,DateOfBirth
	,dbo.CalculateAge(DateOfBirth) AS Age
FROM Employee;


CREATE FUNCTION ConcatenateName (@FirstName VARCHAR(50), @LastName VARCHAR(50))
RETURNS VARCHAR(100)
AS
BEGIN
    DECLARE @FullName VARCHAR(100);
    
    -- Concatenate first name and last name
    SET @FullName = @FirstName + ' ' + @LastName;
    
    RETURN @FullName;
END;


SELECT FirstName
	,LastName
	,DateOfBirth
	,dbo.CalculateAge(DateOfBirth) AS Age
	,dbo.ConcatenateName(FirstName, LastName) AS FullName
FROM Employee;
