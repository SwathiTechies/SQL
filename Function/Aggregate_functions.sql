-- Aggregate Functions

--COUNT: Count the total number of employees.
SELECT COUNT(*) AS TotalEmployees
FROM Employee;

--SUM: Calculate the total salary expense for all employees.
SELECT SUM(Salary) AS TotalSalaryExpense
FROM Employee;

--AVG: Find the average salary of employees.
SELECT AVG(Salary) AS AverageSalary
FROM Employee;

--MIN: Determine the earliest hire date among employees.
SELECT MIN(HireDate) AS EarliestHireDate
FROM Employee;

--MAX: Find the latest date of birth among employees.
SELECT MAX(DateOfBirth) AS LatestDateOfBirth
FROM Employee;

--FOR XML PATH: Concatenate first names of employees in a single string.
SELECT STUFF((SELECT ', ' + FirstName 
              FROM Employee 
              FOR XML PATH('')), 1, 2, '') AS AllFirstNames;

