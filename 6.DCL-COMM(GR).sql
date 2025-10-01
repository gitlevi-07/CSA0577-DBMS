CREATE USER IF NOT EXISTS 'user1'@'localhost' IDENTIFIED BY 'password123';

GRANT SELECT, INSERT ON college.Department TO 'user1'@'localhost';

SHOW GRANTS FOR 'user1'@'localhost';
REVOKE INSERT ON college.Department FROM 'user1'@'localhost';
SHOW GRANTS FOR 'user1'@'localhost';
