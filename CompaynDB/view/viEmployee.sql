CREATE VIEW [dbo].[viEmployee]
	AS SELECT Id, FirstName, LastName, Birthday, Job, DepartmentId FROM [Employee]
	WHERE DeleteTime IS NULL
