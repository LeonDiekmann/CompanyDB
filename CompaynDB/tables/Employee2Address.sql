CREATE TABLE [dbo].[Employee2Address]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[EmployeeId] INT NOT NULL REFERENCES Employee(Id),
	[AddressId] INT NOT NULL REFERENCES Address(Id),
	[CreationTime] DATETIME2(7),
	[DeleteTime] DATETIME2(7)
)
