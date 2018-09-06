CREATE VIEW [dbo].[viCompany]
	AS SELECT Id, Name, CEO FROM [Company]
	WHERE DeleteTime IS NULL
