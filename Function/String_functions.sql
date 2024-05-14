--SQL System Functions
--String Function

--CONCAT: Concatenates two or more strings together.
SELECT CONCAT('Structured ', 'Query Language') AS ConcatenatedString;

--SUBSTRING: Returns a substring from a string, starting at a specified position for a certain length.
SELECT SUBSTRING('Structured Query Language', 7, 5) AS SubstringResult;

--UPPER: Converts all characters in a string to uppercase.
SELECT UPPER('mssql') AS UppercaseString;

--LOWER: Converts all characters in a string to lowercase.
SELECT LOWER('MSSQL') AS LowercaseString;

--LENGTH/LEN: Returns the length of a string.
SELECT LEN('Structured Query Language') AS LengthOfString;

--TRIM: Removes leading and trailing spaces from a string.
SELECT TRIM('   Structured Query Language   ') AS TrimmedString;

--REPLACE: Replaces all occurrences of a substring within a string with another substring.
SELECT REPLACE('Hello World', 'World', 'Universe') AS ReplacedString;
--REPLACE(original_string, substring_to_replace, replacement_substring)


--LEFT: Returns the leftmost characters from a string.
SELECT LEFT('Query Language', 5) AS LeftString;

--RIGHT: Returns the rightmost characters from a string.
SELECT RIGHT('Structured Query Language', 8) AS RightString;











