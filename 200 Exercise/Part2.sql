SELECT * FROM Employees;
SELECT * FROM Departments;
SELECT LastName FROM Employees;

SELECT DISTINCT LastName FROM Employees;

SELECT * FROM Employees
WHERE LastName = 'Smith';

SELECT * FROM Employees
WHERE LastName IN  ('Smith','Doe');

SELECT * FROM Employees
Where Department = 14;

SELECT * FROM Employees
Where Department IN (37, 77);

SELECT * FROM Employees
Where Lastname LIKE 'S%';

SELECT SUM(Budget) AS TotalBudget FROM Departments;

SELECT COUNT(*) AS NumberofEmployees, Department FROM Employees
GROUP BY Department
ORDER BY NumberofEmployees DESC;

SELECT *
FROM Employees INNER JOIN Departments
ON Employees.Department = Departments.Code;

SELECT Employees.Name, Employees.LastName, Departments.Name, Departments.Budget
FROM Employees INNER JOIN Departments
ON Employees.Department = Departments.Code

SELECT Name, LastName FROM Employees
WHERE Department IN (SELECT Code FROM Departments WHERE Budget > 60000);

SELECT Name FROM Departments 
WHERE Budget > (SELECT AVG(Budget) FROM Departments)

SELECT Name FROM Departments
WHERE 2< (
   SELECT COUNT(*) 
     FROM Employees
     WHERE Department = Departments.Code
  );

SELECT Name , Lastname FROM Employees
WHERE Department = ( 
	SELECT Code FROM Departments
	WHERE Budget = (
		SELECT Budget
		FROM Departments 
		ORDER BY Budget DESC 
		OFFSET 1 ROW 
		FETCH NEXT 1 ROW ONLY));
INSERT INTO Departments
  VALUES ( 11 , 'Quality Assurance' , 40000);

INSERT INTO Employees
  VALUES ( '847219811' , 'Mary' , 'Moore' , 11);

UPDATE Departments
SET Budget = Budget *9/10

UPDATE Employees
SET Department = 14
Where Department = 77;

DElete FROM Employees
Where Department = 14

DELETE FROM Employees
WHERE Department IN ( SELECT Name From Department WHERE Budget >= 60000)

DELETE FROM Employees;
