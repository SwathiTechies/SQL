--Mathematical Function

--ABS: Returns the absolute (positive) value of a number.
SELECT ABS(-10);

--POWER: Raises a number to the power of another number.
SELECT POWER(2, 3);
--(since 2^3 = 8)

--PI: Returns the value of pi (π), which is a mathematical constant approximately equal to 3.14159.
SELECT PI();

--EXP: Returns e raised to the power of a specified number.
SELECT EXP(1);
--since e^1 = e

--LOG: Returns the natural logarithm of a number.
SELECT LOG(10);
--since ln(10) ≈ 2.3026

--CEILING: Rounds a number up to the nearest integer or the next higher value.
SELECT CEILING(12.54);

--FLOOR: Rounds a number down to the nearest integer or the next lower value.
SELECT FLOOR(12.54);

--ROUND: Rounds a number to a specified number of decimal places.
SELECT ROUND(12.545, 0);


SELECT FirstName, LastName, Salary,
       ROUND(Salary, 0) AS RoundedSalary,
       CEILING(Salary/1000.0)*1000 AS Bonus,
       FLOOR(Salary/100.0)*100 AS DiscountedSalary
FROM Employee;

sELECT * FROM Employee
SELECT * FROM Department

INSERT INTO Employee (EmployeeID, FirstName, LastName, Gender, DateOfBirth, DepartmentID, Salary, HireDate)
VALUES 
    (4, 'John', 'Doe', 'M', '1990-05-15', 1, 50000.78, '2020-01-15'),
    (5, 'Jane', 'Smith', 'F', '1995-09-20', 2, 60000.23, '2018-03-10'),
    (6, 'Michael', 'Johnson', 'M', '1985-07-10', 3, 55000.99, '2019-05-25');
