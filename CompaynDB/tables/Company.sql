CREATE TABLE [dbo].[Company]
(
	[Id] INT NOT NULL PRIMARY KEY,
	[Name] VARCHAR(256) NOT NULL,
	[CreationTime] DATETIME2(7),
	[DeleteTime] DATETIME2(7)
)
