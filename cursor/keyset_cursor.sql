-- Declare the variables for holding data.
DECLARE @EmployeeID VARCHAR(50), @FirstName VARCHAR(50), @LastName VARCHAR(50);

DECLARE keyset_cursor CURSOR KEYSET FOR
SELECT EmployeeID, FirstName, LastName
FROM Employee;

OPEN keyset_cursor;

-- Move to the last row in the result set
FETCH LAST FROM keyset_cursor INTO @EmployeeID, @FirstName, @LastName;

-- Process the fetched rows
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Do something with the fetched data
    PRINT @EmployeeID + ' ' + @FirstName + ' ' + @LastName;
	Select @EmployeeID as EmpId, @FirstName as FirstName , @LastName AS Lastname;

    -- Move the cursor to the previous row
    FETCH PRIOR FROM keyset_cursor INTO @EmployeeID, @FirstName, @LastName;
END;

CLOSE keyset_cursor;
DEALLOCATE keyset_cursor;
