CREATE TABLE [dbo].[Employee2Address]
(
	[EmployeeId] INT NOT NULL REFERENCES Employee(Id),
	[AddressId] INT NOT NULL REFERENCES Address(Id),
	PRIMARY KEY(EmployeeId,AddressId)
)
