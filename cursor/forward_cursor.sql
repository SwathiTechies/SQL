--Declare the variables for holding data.  
DECLARE @Column1Value VARCHAR(50), @Column2Value VARCHAR(50)

DECLARE forward_only_cursor CURSOR FORWARD_ONLY FOR
SELECT AuditID, ModifiedDate
FROM AuditTable;

OPEN forward_only_cursor;

FETCH NEXT FROM forward_only_cursor INTO @Column1Value, @Column2Value;

-- Process the fetched rows
WHILE @@FETCH_STATUS = 0
BEGIN
    -- Do something with the fetched data
    PRINT @Column1Value + ' ' + @Column2Value;

    FETCH NEXT FROM forward_only_cursor INTO @Column1Value, @Column2Value;
END;

CLOSE forward_only_cursor;
DEALLOCATE forward_only_cursor;
