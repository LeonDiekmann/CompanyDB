CREATE VIEW [dbo].[viCompany]
	AS SELECT c.Id, c.Name, a.PostCode, a.City, a.Street, a.HouseNumber, a.Country 
	FROM [Company] c
	LEFT OUTER JOIN
	[Company2Address]
	ON 
	c.Id = CompanyId
	LEFT OUTER JOIN
	[Address] a
	ON
	AddressId = a.Id
	WHERE c.DeleteTime IS NULL