CREATE VIEW [dbo].[viCompany]
	AS SELECT Id, Name FROM [Company]
	WHERE DeleteTime IS NULL
