
CREATE OR REPLACE VIEW EmpDept AS
SELECT EmpName, DeptName
FROM Employee
INNER JOIN Department ON Employee.DeptID = Department.DeptID;

SELECT * FROM EmpDept;

CREATE INDEX idx_deptid ON Employee(DeptID);

SHOW INDEX FROM Employee;
