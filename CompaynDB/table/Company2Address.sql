CREATE TABLE [dbo].[Company2Address]
(
	[CompanyId] INT NOT NULL REFERENCES Company(Id),
	[AddressId] INT NOT NULL REFERENCES Address(Id),
	PRIMARY KEY(CompanyId,AddressId)
)
