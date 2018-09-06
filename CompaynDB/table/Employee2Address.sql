CREATE TABLE [dbo].[Employee2Address]
(
	[EmployeeId] INT NOT NULL REFERENCES Employee(Id),
	[AddressId] INT NOT NULL REFERENCES Address(Id),
	[CreationTime] DATETIME2(7) DEFAULT getDate(),
	PRIMARY KEY(EmployeeId,AddressId)
)
