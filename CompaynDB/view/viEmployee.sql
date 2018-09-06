CREATE VIEW [dbo].[viEmployee]
	AS SELECT Id, FirstName, LastName, Birthday, Gender, Job, DepartmentId FROM [Employee]
	WHERE DeleteTime IS NULL