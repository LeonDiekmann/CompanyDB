CREATE PROCEDURE [dbo].[spCompany2Address]
	@CompanyId INT,
	@AddressId INT
AS
BEGIN
	SELECT @CompanyId, @AddressId

	DECLARE @DBCompanyId int
	DECLARE @DBAddressId int
	Set @DBCompanyId = (SELECT CompanyId FROM Company2Address WHERE CompanyId = @CompanyId)
	Set @DBAddressId = (SELECT AddressId FROM Company2Address WHERE AddressId = @AddressId)
	/*if(@DBCompanyId is NULL and @DBAddressId is NULL)*/
		--begin
			INSERT INTO [dbo].[Company2Address]
				([CompanyId],
				[AddressId])
				VALUES
				(@CompanyId,
				@AddressId)
			SET @DBCompanyId = @@IDENTITY
			SET @DBAddressId = @@IDENTITY
	--	end
	--else
	--	begin
	--		UPDATE [dbo].[Company2Address]
	--		SET [CompanyId] = @CompanyId,
	--		[AddressId] = @AddressId
	--		WHERE AddressId = @AddressId OR CompanyId = @CompanyId
	--	end
	SELECT @DBCompanyId
	SELECT @DBAddressId
	RETURN @DBCompanyId
	RETURN @DBAddressId
END
GO;
