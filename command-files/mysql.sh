
#DB SELECT OPTIONS 
SELECT 
* FROM table 
WHERE salary > 50000;

SELECT 
* FROM table 
WHERE salary = 50000
	  AND Department = 'sales';

SELECT 
* FROM table 
WHERE salary = 50000
	  OR Department = 'sales';

SELECT 
* FROM table 
WHERE Department IN 
	  ('Marketing','Sales');

##This is more demanding.
#Test and anything after it. 
SELECT 
* FROM table 
WHERE name LIKE 'Test%';  

#Test and anything alter it. 
SELECT * FROM table 
WHERE name LIKE 'Sm_th';  

#NULL 
SELECT *
FROM table 
WHERE name IS NULL;  

##GET NOT NULL
SELECT *
FROM table 
WHERE name IS NOT NULL; 

##Return by orider 
SELECT item1, iteam2
FROM table 
ORDER BY item1 DESC;

* FROM table 
WHERE salary > 50000
ORDER BY item1,iteam2;

##Using aggregate functions
SELECT COUNT(*)
FROM table 
WHERE name LIKE 'Sm_th'; 

SELECT MAX(item1)
FROM table;

SELECT MIN(item1)
FROM table;

SELECT AVG(item1)
FROM table;

SELECT SUM(item1)
FROM table
WHERE id = 1; 

SELECT COUNT(*),Color
FROM Product
GROUP BY = 'Color'; 

##Joining tables (INNER JOIN) IF ONLY MATCH EXIST
SELECT firstName,LastName, Date,Employee.DepartmentId
DepartmentId,Location
FROM Employee INNER JOIN Department
ON Employee.DepartmentID = Department.DepartmentID;

##Joining tables (OUTER JOIN) TAKES PRESIDENCE IF LEFT OR RIGHT KEYWORD. RETURNS EVEN NULL. 
SELECT firstName,LastName, Date,Employee.DepartmentId
DepartmentId,Location
FROM Employee LEFT OUTER JOIN Department
ON Employee.DepartmentID = Department.DepartmentID;

##CRUD /DML
#C-> INSERT
#R-> SELECT
#U-> UPDATE
#D-> DELETE

#C-> INSERT
INSERT INTO table 
	   ('col1_name','col2_name','col3_name')
	   VALUES ('val1','val2','val3');

#U-> UPDATE
UPDATE table
SET column = value 
WHERE condition; 

#D-> DELETE (Careful this is distructive.)
DELETE FROM col1_name
WHERE condition;

##DDL(The data definition language.)
#[CREATE,ALTER,DROP]
#CREATE

CREATE table_name
(column definition)

CREATE Employee
(EmployeeID INTEGER PRIMARY KEY,
 FirstName  VARCHAR(35) NOT NULL,
 Lastname   VARCHAR(100) NOT NULL,
 Department VARCHAR(30) NOT NULL,
 salary  	INTEGER
);

#ALTER (ADD NEW COLUMN)
ALTER TABLE Employee
ADD Email VARCHAR(100);

#DROP (DROM table)
DROP TABLE Employee;

##Non-cluster index(Speeds up data serch.) (Indesing)

#Stored Procedures (Prevent sql injection.)
CREATE PROCEDURE HighlyPaid()
	SELECT * FROM Employee
	WHERE salary > 50000
	ORDER BY Lastname,FirstName

END;
CALL HighlyPaid();

CREATE PROCEDURE EmployeeInDept(IN dept VARCHAR(50))
	SELECT 
	* FROM Employee
	WHERE Department = dept 
	ORDER BY Lastname,firstName;
END;
CALL EmployeeInDept('Accounting');

# sql injection example
x' SELECT * FROM Users;--
x' DELETE * FROM Users;--



