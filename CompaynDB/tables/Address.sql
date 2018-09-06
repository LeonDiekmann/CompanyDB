CREATE TABLE [dbo].[Address]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[PostCode] INT NOT NULL,
	[City] VARCHAR(64) NOT NULL,
	[Street] VARCHAR(64) NOT NULL,
	[HouseNumber] INT NOT NULL,
	[CreationTime] DATETIME2(7),
	[DeleteTime] DATETIME2(7)
)
