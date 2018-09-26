CREATE PROCEDURE [dbo].[spCompany]
	@Id INT = -1,
	@Name VARCHAR(256) = NULL
AS
BEGIN
	SELECT @Name, @Id

	DECLARE @DBId int
	Set @DBId = (SELECT Id FROM Company WHERE Id = @Id)
	if(@DBId is NULL)
		begin
			INSERT INTO [dbo].[Company]
				([Name])
				VALUES
				(@Name)
			SET @DBId = @@IDENTITY
		end
	else
		begin
			UPDATE [dbo].[Company]
			SET [Name] = case when @Name is null then name else @Name end
			WHERE Id = @Id
		end
	return @DBId
END
--SELECT Id, Name,PostCode, City, Street, HouseNumber, Country 
--			FROM viCompany 
--			WHERE Id = COALESCE(@DBId, @Id)
