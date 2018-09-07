CREATE PROCEDURE [dbo].[spDepartment]
	@Id INT = NULL,
	@Name VARCHAR(128) = NULL,
	@CompanyId INT = NULL,
	@ManagerId INT = NULL
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
			[Name] = case when @Name is null then Name else @Name end,
			[CompanyId] = case when @CompanyId is null then CompanyId else @CompanyId end,
			[ManagerId] = case when @ManagerId is null then ManagerId else @ManagerId end
			WHERE Id = @Id
		end
	SELECT @DBId
	RETURN @DBId
END
GO;