CREATE VIEW [dbo].[viAddress]
	AS SELECT Id, PostCode, City, Street, HouseNumber, Country FROM [Address]
	WHERE DeleteTime IS NULL
