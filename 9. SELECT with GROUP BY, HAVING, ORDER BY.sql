SELECT DeptID, COUNT(*) AS Employee_Count
FROM Employee
GROUP BY DeptID;
SELECT DeptID, COUNT(*) AS Employee_Count
FROM Employee
GROUP BY DeptID
HAVING COUNT(*) > 1;
SELECT EmpName, Salary
FROM Employee
ORDER BY Salary DESC;
