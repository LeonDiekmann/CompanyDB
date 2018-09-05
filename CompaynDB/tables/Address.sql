CREATE TABLE [dbo].[Address]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[PostCode] INT,
	[City] VARCHAR(64),
	[Street] VARCHAR(64),
	[HouseNumber] INT,
	[CreationTime] DATETIME2(7),
	[DeleteTime] DATETIME2(7)
)
