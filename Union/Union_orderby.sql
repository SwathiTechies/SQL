CREATE TABLE branch (
branch_id INT PRIMARY KEY ,
br_name VARCHAR(30) NOT NULL,
addr VARCHAR(200) );

INSERT INTO branch VALUES(1,'Chennai','16 ABC Road');
INSERT INTO branch VALUES(2,'Coimbatore','120 15th Block');
INSERT INTO branch VALUES(3,'Mumbai','25 XYZ Road');
INSERT INTO branch VALUES(4,'Hydrabad','32 10th Street');

CREATE TABLE clients (
client_id INT PRIMARY KEY ,
location VARCHAR(30) NOT NULL,
address VARCHAR(200) );

INSERT INTO clients VALUES(1,'NewYork','25 10th Block');
INSERT INTO clients VALUES(2,'Coimbatore','120 15th Block');
INSERT INTO clients VALUES(3,'London','21 ABC Road');

--UNION
SELECT * FROM branch
UNION
SELECT * FROM clients

--UNION ALL
SELECT * FROM branch
UNION ALL
SELECT * FROM clients;

--ORDER BY
SELECT * FROM Employee
ORDER BY Salary ASC

SELECT * FROM Employee
ORDER BY Salary DESC

SELECT * FROM Employee
ORDER BY FirstName

SELECT * FROM Employee
ORDER BY LastName, Gender

--GROUP BY
SELECT COUNT(EmployeeID) FROM Employee
GROUP BY Salary 

SELECT AVG(Salary) FROM Employee
GROUP BY EmployeeID

SELECT * FROM Employee

--HAVING
SELECT AVG(Salary) FROM Employee
GROUP BY DepartmentID
HAVING MIN (Salary) < 100000
ORDER BY COUNT(EmployeeID)ASC
