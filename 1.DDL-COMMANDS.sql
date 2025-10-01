CREATE TABLE Student (
    RollNo INT,
    Name VARCHAR(50),
    Age INT
);
SELECT * FROM Student;
ALTER TABLE Student ADD Email VARCHAR(100);
SELECT * FROM Student;
INSERT INTO Student VALUES (1, 'Alice', 20, 'alice@example.com');
INSERT INTO Student VALUES (2, 'Bob', 21, 'bob@example.com');
SELECT * FROM Student;
TRUNCATE TABLE Student;
SELECT * FROM Student;
DROP TABLE Student;