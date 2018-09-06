CREATE VIEW [dbo].[viDepartment]
	AS SELECT Id, Name, CompanyId, ManagerId FROM [Department]
	WHERE DeleteTime IS NULL
