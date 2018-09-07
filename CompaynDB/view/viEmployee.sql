CREATE VIEW [dbo].[viEmployee]
	AS SELECT e.Id, e.FirstName, e.LastName, e.Birthday,[dbo].[fnGender](Gender) as Gender, e.Job, e.DepartmentId, a.PostCode, a.City, a.Street, a.HouseNumber, a.Country
	FROM [Employee] e
	LEFT OUTER JOIN 
	[Employee2Address]
	ON
	Id = EmployeeId
	LEFT OUTER JOIN
	[Address] a
	ON
	AddressId = a.Id
	WHERE e.DeleteTime IS NULL