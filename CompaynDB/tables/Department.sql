CREATE TABLE [dbo].[Department]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(64) NOT NULL,
	[CreationTime] DATETIME2(7),
	[DeleteTime] DATETIME2(7),
	[ManagerId] INT NOT NULL REFERENCES Employees(Id),

)
