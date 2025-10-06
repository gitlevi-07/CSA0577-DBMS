DROP TABLE IF EXISTS Employee;
CREATE TABLE Employee (
    EmpID INT AUTO_INCREMENT,
    EmpName VARCHAR(50),
    Salary DECIMAL(10,2),
    DeptID INT,
    PRIMARY KEY (EmpID),
    FOREIGN KEY (DeptID) REFERENCES Department(DeptID)
);

INSERT INTO Employee (EmpName, Salary, DeptID) VALUES
('Alice', 6000, 1),
('Bob', 4500, 1),
('Charlie', 5500, 2),
('David', 3000, 2),
('Eve', 7000, 3);

SELECT * FROM Employee;
