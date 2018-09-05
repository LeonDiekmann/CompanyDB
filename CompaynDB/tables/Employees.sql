CREATE TABLE [dbo].[Employees]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[FirstName] VARCHAR(64) NOT NULL,
	[LastName] VARCHAR(64) NOT NULL,
	[Birthday] Date,
	[DepartmentId] INT NOT NULL REFERENCES Department(Id),
	[CreationTime] DATETIME2(7),
	[DeleteTime] DATETIME2(7)

)
