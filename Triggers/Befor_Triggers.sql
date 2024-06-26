USE [Employees]
GO
/****** Object:  Trigger [dbo].[before_insert_trigger]    Script Date: 06-05-2024 01:32:15 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
ALTER TRIGGER [dbo].[before_insert_trigger]
ON [dbo].[Employee]
INSTEAD OF INSERT
AS
BEGIN
    -- Check if any inserted row has a salary equal to 1000
    IF EXISTS (SELECT 1 FROM inserted WHERE salary = 1000)
    BEGIN
        RAISERROR ('Salary cannot be equal to 1000', 16, 1)
        ROLLBACK TRANSACTION;
    END;
    ELSE
    BEGIN
        -- If no row has a salary equal to 1000, proceed with the insert
        INSERT INTO Employee
        SELECT * FROM inserted;
    END;
END;
