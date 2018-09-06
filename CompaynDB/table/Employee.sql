CREATE TABLE [dbo].[Employee]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[FirstName] VARCHAR(256) NOT NULL,
	[LastName] VARCHAR(6256) NOT NULL,
	[Birthday] Date,
	[Gender] INT,
	[Job] VARCHAR(256) NOT NULL,
	[DepartmentId] INT NOT NULL REFERENCES Department(Id),
	[CreationTime] DATETIME2(7) DEFAULT getDate(),
	[DeleteTime] DATETIME2(7)
	
)
