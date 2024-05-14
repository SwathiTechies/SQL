--Date and Time Function

--CURRENT_TIMESTAMP: Returns the current date and time.
SELECT CURRENT_TIMESTAMP AS CurrentDateTime;

--DATEADD: Adds a specified interval to a date.
SELECT DATEADD(DAY, 7, CURRENT_TIMESTAMP) AS NewDate;
--OR
SELECT DATEADD(DAY, 7, '2024-05-07') AS NewDate;
SELECT DATEADD(month, 7, '2024-05-07') AS NewDate;
SELECT DATEADD(year, 7, '2024-05-07') AS NewYear;
SELECT DATEADD(hour, 7, '2024-05-07 12:00:00') AS NewHours;
SELECT DATEADD(minute, 7, '2024-05-07 12:00:00') AS NewMinute;

--DATEDIFF: Returns the difference between two dates.
SELECT DATEDIFF(day, '2024-05-07', '2024-05-14') AS DayDifference;
SELECT DATEDIFF(month, '2024-01-01', '2024-05-01') AS MonthDifference;
SELECT DATEDIFF(year, '1990-01-01', '2024-01-01') AS YearDifference;
SELECT DATEDIFF(hour, '2024-05-07 12:00:00', '2024-05-08 06:00:00') AS HourDifference;
SELECT DATEDIFF(minute, '2024-05-07 12:00:00', '2024-05-07 12:30:00') AS MinuteDifference;

--DATEPART: Returns a specified part of a date.
SELECT DATEPART(YEAR, '2024-05-07') AS Year;
SELECT DATEPART(day, '2024-05-07') AS day;
SELECT DATEPART(month, '2024-05-07') AS month;
SELECT DATEPART(hour, '2024-05-07 12:00:00') AS hour;
SELECT DATEPART(minute, '2024-05-07 12:10:00') AS minute;

--DAY, MONTH, YEAR: Extracts the day, month, or year from a date.
SELECT DAY('2024-05-07') AS DayOfMonth,
       MONTH('2024-05-07') AS Month,
       YEAR('2024-05-07') AS Year;

--GETDATE: Returns the current date and time (similar to CURRENT_TIMESTAMP).
SELECT GETDATE() AS CurrentDateTime;


--Formats a date as specified.
SELECT FORMAT(GETDATE(), 'yyyy') AS FormattedYear;
SELECT FORMAT(GETDATE(), 'MM') AS FormattedMonth;
SELECT FORMAT(GETDATE(), 'dd') AS FormattedDay;
SELECT FORMAT(GETDATE(), 'HH') AS FormattedHour;
SELECT FORMAT(GETDATE(), 'mm') AS FormattedMinute;
SELECT FORMAT(GETDATE(), 'ss') AS FormattedSecond;
SELECT FORMAT(GETDATE(), 'tt') AS FormattedAMPM;
SELECT FORMAT('2024-05-07 12:34:56', 'ss') AS FormattedAMPM;
SELECT FORMAT(CONVERT(datetime, '2024-05-07 12:34:56'), 'tt') AS FormattedAMPM;
SELECT FORMAT(GETDATE(), 'yyyy-MM-dd HH:mm:ss') AS FormattedDateTime;

--Converts a string to a date or a date to a string.
SELECT CONVERT(DATETIME, '2024-05-07') AS DateConverted;






