CREATE PROCEDURE [dbo].[spAddress]
	@Id INT = NULL,
	@PostCode INT = NULL,
	@City VARCHAR(128),
	@Street VARCHAR(128),
	@HouseNumber VARCHAR(128),
	@Country VARCHAR(128)
AS
BEGIN

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
				[PostCode] =	case when @PostCode is null then PostCode else @PostCode end,
				[City] =		@City,
				[Street] =		@Street,
				[HouseNumber] = @HouseNumber,
				[Country] =		@Country
			WHERE Id =			@Id
		end
	SELECT @DBId
	RETURN @DBId
END
GO;
