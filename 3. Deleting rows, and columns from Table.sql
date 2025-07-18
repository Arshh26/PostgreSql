CREATE TABLE USERS (
		Users_id INT PRIMARY KEY,
		Name Varchar(100) NOT NULL,
		Qualification varchar(100),
		Age INT,
		Income NUMERIC(10, 2)
);

SELECT * FROM Users;

INSERT INTO Users(Users_id, Name, Qualification, Age, Income)
		VALUES(5662, 'Sathish', 'Sub-Inspector', 30, 78000.00),
		(5663, 'Dhawale', 'Professor', 28, 40000.00),
		(5664, 'Gupta', 'Lecturer', 30, 38000.00),
		(5665, 'Ganesh', 'Peon', 32, 25000.00);

DELETE FROM Users
WHERE Users_id= 5664;

ALTER TABLE Users
DROP COLUMN Age;


