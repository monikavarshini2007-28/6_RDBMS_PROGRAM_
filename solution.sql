
CREATE TABLE Marksheet (
RollNo INT,
Name VARCHAR(30),
Department VARCHAR(10),
Marks INT
);

INSERT INTO Marksheet VALUES (1, 'Arun', 'CSE', 85);
INSERT INTO Marksheet VALUES (2, 'Divya', 'IT', 78);
INSERT INTO Marksheet VALUES (3, 'Karthik', 'CSE', 92);
INSERT INTO Marksheet VALUES (4, 'Nisha', 'ECE', 67);
INSERT INTO Marksheet VALUES (5, 'Rahul', 'IT', 88);

SELECT * FROM Marksheet
WHERE Marks > 80
ORDER BY Marks DESC;
