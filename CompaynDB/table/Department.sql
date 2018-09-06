CREATE TABLE [dbo].[Department]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Name] VARCHAR(64) NOT NULL,
	[CompanyId] INT NOT NULL REFERENCES Company(Id),
	[ManagerId] INT REFERENCES Employee(Id),
	[CreationTime] DATETIME2(7),
	[DeleteTime] DATETIME2(7),
)
