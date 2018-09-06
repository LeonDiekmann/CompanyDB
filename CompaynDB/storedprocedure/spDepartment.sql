CREATE PROCEDURE [dbo].[spDepartment]
	@Id INT,
	@Name VARCHAR(128),
	@CompanyId INT,
	@ManagerId INT
AS
BEGIN
	SELECT @Id, @Name, @CompanyId, @ManagerId

	DECLARE @DBId int
	Set @DBId = (SELECT Id FROM Department WHERE Id = @Id)
	if(@DBId is NULL)
		begin
			INSERT INTO [dbo].[Department]
				([Name],
				[CompanyId],
				[ManagerId])
				VALUES
				(@Name,
				@CompanyId,
				@ManagerId)
			SET @DBId = @@IDENTITY 
		end
	else
		begin
			UPDATE [dbo].[Department]
			SET 
			[Name] = @Name,
			[CompanyId] = @CompanyId,
			[ManagerId] = @ManagerId
			WHERE Id = @Id
		end
	SELECT @DBId
	RETURN @DBId
END
GO;