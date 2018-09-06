CREATE VIEW [dbo].[viCompany2Address]
	AS SELECT Id, CompanyId, AddressId FROM [Company2Address]
	WHERE DeleteTime IS NULL
