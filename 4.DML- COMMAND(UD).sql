USE college;
DROP TABLE IF EXISTS Employee;
DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);
INSERT INTO Department (DeptID, DeptName) VALUES (1, 'Computer Science');
INSERT INTO Department (DeptID, DeptName) VALUES (2, 'Mechanical');
INSERT INTO Employee (EmpID, EmpName, DeptID) VALUES (101, 'Alice', 1);
INSERT INTO Employee (EmpID, EmpName, DeptID) VALUES (102, 'Bob', 2);
INSERT INTO Employee (EmpID, EmpName, DeptID) VALUES (103, 'Charlie', 1);
SELECT * FROM Employee;
UPDATE Employee
SET EmpName = 'Alicia'
WHERE EmpID = 101;
SELECT * FROM Employee;
DELETE FROM Employee
WHERE EmpID = 102;
SELECT * FROM Employee;
DELETE FROM Employee;
SELECT * FROM Employee;