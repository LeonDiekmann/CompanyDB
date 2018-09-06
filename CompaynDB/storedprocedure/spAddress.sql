CREATE PROCEDURE [dbo].[spAddress]
	@Id INT,
	@PostCode INT,
	@City VARCHAR(128),
	@Street VARCHAR(128),
	@HouseNumber VARCHAR(128),
	@Country VARCHAR(128)
AS
BEGIN
	SELECT @PostCode, @Id, @City, @Street, @HouseNumber, @Country

	DECLARE @DBId int
	Set @DBId = (SELECT Id FROM Address WHERE Id = @Id)
	if(@DBId is NULL)
		begin
			INSERT INTO [dbo].[Address]
				([PostCode],
				[City],
				[Street],
				[HouseNumber],
				[Country])
				VALUES
				(@PostCode,
				@City,
				@Street,
				@HouseNumber,
				@Country)
			SET @DBId = @@IDENTITY 
		end
	else
		begin
			UPDATE [dbo].[Address]
			SET 
			[PostCode] = @PostCode,
			[City] = @City,
			[Street] = @Street,
			[HouseNumber] = @HouseNumber,
			[Country] = @Country
			WHERE Id = @Id
		end
	SELECT @DBId
	RETURN @DBId
END
GO;
