﻿CREATE TABLE [dbo].[Department]
(
	[Id] INT NOT NULL IDENTITY(1,1) PRIMARY KEY,
	[Name] VARCHAR(256) NULL,
	[CompanyId] INT NULL REFERENCES Company(Id),
	[ManagerId] INT REFERENCES Employee(Id),
	[CreationTime] DATETIME2(7) DEFAULT getDate(),
	[DeleteTime] DATETIME2(7),
)
