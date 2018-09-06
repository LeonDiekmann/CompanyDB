CREATE PROCEDURE [dbo].[spCompany]
	@Id INT,
	@name VARCHAR(256)
AS
BEGIN
	SELECT @name, @Id

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
			SET [Name] = @Name
			WHERE Id = @Id
		end
	SELECT @DBId
	RETURN @DBId
END
GO;