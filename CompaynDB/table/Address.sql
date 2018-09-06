CREATE TABLE [dbo].[Address]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[PostCode] INT NULL,
	[City] VARCHAR(256) NULL,
	[Street] VARCHAR(256) NULL,
	[HouseNumber] INT NULL,
	[Country] VARCHAR(256),
	[CreationTime] DATETIME2(7) DEFAULT getDate(),
	[DeleteTime] DATETIME2(7)
)
