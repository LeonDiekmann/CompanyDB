CREATE PROCEDURE [dbo].[spAddress]
	@Id INT = NULL,
	@PostCode INT = NULL,
	@City VARCHAR(128) = NULL,
	@Street VARCHAR(128) = NULL,
	@HouseNumber INT = NULL,
	@Country VARCHAR(128) = NULL
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
				[City] =		case when @City is null then City else @City end,
				[Street] =		case when @Street is null then Street else @Street end,
				[HouseNumber] = case when @HouseNumber is null then HouseNumber else @HouseNumber end,
				[Country] =		case when @Country is null then Country else @Country end
			WHERE Id =			@Id
		end
	SELECT @DBId
	RETURN @DBId
END
GO;
