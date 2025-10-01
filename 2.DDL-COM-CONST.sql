USE college;
DROP TABLE IF EXISTS Department;
CREATE TABLE Department (
    DeptID INT PRIMARY KEY,
    DeptName VARCHAR(50)
);
DESCRIBE Department;
DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
    EmpID INT PRIMARY KEY,
    EmpName VARCHAR(50),
    DeptID INT,
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);
DESCRIBE Employee;
DROP TABLE IF EXISTS Users;
CREATE TABLE Users (
    UserID INT PRIMARY KEY,
    Email VARCHAR(100) UNIQUE
);
DESCRIBE Users;
DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    Price DECIMAL(10,2) CHECK (Price > 0)
);
INSERT INTO Product VALUES (1, 100.50);
SELECT * FROM Product;
DROP TABLE IF EXISTS Orders;
CREATE TABLE Orders (
    OrderID INT PRIMARY KEY,
    Status VARCHAR(20) DEFAULT 'Pending'
);
INSERT INTO Orders (OrderID) VALUES (1);
INSERT INTO Orders (OrderID, Status) VALUES (2, 'Shipped');
SELECT * FROM Orders;
DROP TABLE IF EXISTS Course;
CREATE TABLE Course (
    CourseID INT PRIMARY KEY,
    CourseName VARCHAR(50) NOT NULL
);
INSERT INTO Course VALUES (1, 'Mathematics');   -- Valid
SELECT * FROM Course;