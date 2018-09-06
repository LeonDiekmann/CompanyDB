CREATE TABLE [dbo].[Company2Address]
(
	[CompanyId] INT NOT NULL REFERENCES Company(Id),
	[AddressId] INT NOT NULL REFERENCES Address(Id),
	[CreationTime] DATETIME2(7) DEFAULT getDate(),
	PRIMARY KEY(CompanyId,AddressId)
)
