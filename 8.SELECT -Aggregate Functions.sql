DROP TABLE IF EXISTS Product;
CREATE TABLE Product (
    ProductID INT PRIMARY KEY,
    ProductName VARCHAR(50),
    Price DECIMAL(10,2)
);

INSERT INTO Product VALUES
(1, 'Pen', 20),
(2, 'Book', 80),
(3, 'Bag', 500),
(4, 'Pencil', 10),
(5, 'Notebook', 60);

SELECT ProductName, Price 
FROM Product 
WHERE Price BETWEEN 50 AND 100;
SELECT EmpName, DeptID 
FROM Employee 
WHERE DeptID IN (1, 2);
SELECT AVG(Price) AS Average_Price 
FROM Product;