USE [Samples]
GO

CREATE TABLE Permissions(
	Id INT PRIMARY KEY,
	Name VARCHAR(20) NOT NULL,
	Details VARCHAR(50)
);

-- #sequence
CREATE SEQUENCE PermissionIdSequence
	START WITH 1
	INCREMENT BY 2;

-- #index
CREATE UNIQUE INDEX Permissions_Name 
	ON Permissions(Name DESC);

GO

-- #insert #sequence
INSERT Permissions (Id, Name, Details) 
VALUES 
	(NEXT VALUE FOR PermissionIdSequence, 'Read', 'General read permission'),
	(NEXT VALUE FOR PermissionIdSequence, 'Write', 'General write permission'),
	(NEXT VALUE FOR PermissionIdSequence, 'Create task', 'Can create task'),
	(NEXT VALUE FOR PermissionIdSequence, 'View task', 'Is able to view task')
;
