CREATE PROCEDURE [dbo].[spCompanyDelete]
	@Id INT = -1
AS
BEGIN
	SELECT @Id
	a
	DECLARE @DBId int
	Set @DBId = (SELECT Id FROM viCompany WHERE Id = @Id)
	if(@DBId IS NOT NULL)
		begin
			UPDATE [dbo].[Company]
			SET DeleteTime = GETDATE() Where Id = @Id
		end
	RETURN @DBId
END
