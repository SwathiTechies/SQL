-- Declare the variables for holding data.
DECLARE @Column1Value VARCHAR(50), @Column2Value VARCHAR(50), @Column3Value VARCHAR(50)

DECLARE dynamic_cursor CURSOR DYNAMIC FOR
SELECT *
FROM Department;

OPEN dynamic_cursor;

FETCH LAST FROM dynamic_cursor INTO @Column1Value, @Column2Value ,@Column3Value;

-- Process the fetched rows
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Do something with the fetched data
    -- Here, I'm updating the DepartmentName for each row
    UPDATE Department
    SET DepartmentName = ''
    WHERE DepartmentID = @Column1Value;
    
	 Select @Column1Value as DeptId, @Column2Value as DeptName ,@Column3Value;
    -- Fetch the next row
    FETCH PRIOR FROM dynamic_cursor INTO @Column1Value, @Column2Value ,@Column3Value;
END;

CLOSE dynamic_cursor;
DEALLOCATE dynamic_cursor;
