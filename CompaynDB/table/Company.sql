﻿CREATE TABLE [dbo].[Company]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Name] VARCHAR(256) NOT NULL,
	[CEO] INT NOT NULL REFERENCES Employee(Id),
	[CreationTime] DATETIME2(7),
	[DeleteTime] DATETIME2(7)
)
