CREATE TABLE [dbo].[Company2Address]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[CompanyId] INT NOT NULL REFERENCES Company(Id),
	[AddressId] INT NOT NULL REFERENCES Address(Id),
	[CreationTime] DATETIME2(7),
	[DeleteTime] DATETIME2(7)
)
