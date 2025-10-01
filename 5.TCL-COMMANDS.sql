CREATE DATABASE IF NOT EXISTS college;
USE college;
DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);
INSERT INTO Department (DeptID, DeptName) VALUES (1, 'Computer Science');
COMMIT;
SAVEPOINT sp1;
INSERT INTO Department (DeptID, DeptName) VALUES (2, 'Mechanical');
SAVEPOINT sp2;
INSERT INTO Department (DeptID, DeptName) VALUES (3, 'Electrical');
ROLLBACK TO sp1;
ROLLBACK;
SELECT * FROM Department;