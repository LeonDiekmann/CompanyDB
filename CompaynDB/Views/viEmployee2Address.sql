CREATE VIEW [dbo].[viEmployee2Address]
	AS SELECT Id, EmployeeId, AddressId FROM [Employee2Address]
	WHERE DeleteTime IS NULL