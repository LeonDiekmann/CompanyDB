﻿CREATE TABLE [dbo].[Company]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Name] VARCHAR(256) NOT NULL,
	[CreationTime] DATETIME2(7) DEFAULT getDate(),
	[DeleteTime] DATETIME2(7)
)
