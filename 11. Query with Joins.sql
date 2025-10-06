USE college;

SELECT Employee.EmpName, Department.DeptName
FROM Employee, Department
WHERE Employee.DeptID = Department.DeptID;

SELECT Employee.EmpName, Department.DeptName
FROM Employee
INNER JOIN Department ON Employee.DeptID = Department.DeptID;

SELECT Employee.EmpName, Department.DeptName
FROM Employee
LEFT OUTER JOIN Department ON Employee.DeptID = Department.DeptID;

SELECT Employee.EmpName, Department.DeptName
FROM Employee
RIGHT OUTER JOIN Department ON Employee.DeptID = Department.DeptID;
