CREATE VIEW [dbo].[viAddress]
	AS SELECT Id, PostCode, City, Street, HouseNumber FROM [Address]
	WHERE DeleteTime IS NULL
