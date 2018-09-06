CREATE PROCEDURE [dbo].[spEmployee2Address]
	@EmployeeId INT,
	@AddressId INT
AS
BEGIN
	SELECT @EmployeeId, @AddressId

	DECLARE @DBEmployeeId int
	DECLARE @DBAddressId int
	Set @DBEmployeeId = (SELECT EmployeeId FROM Employee2Address WHERE EmployeeId = @EmployeeId)
	Set @DBAddressId = (SELECT AddressId FROM Employee2Address WHERE AddressId = @AddressId)
	if(@DBEmployeeId is NULL and @DBAddressId is NULL)
		begin
			INSERT INTO [dbo].[Employee2Address]
				([EmployeeId],
				[AddressId])
				VALUES
				(@EmployeeId,
				@AddressId)
			SET @DBEmployeeId = @@IDENTITY
			SET @DBAddressId = @@IDENTITY
		end
	else
		begin
			UPDATE [dbo].[Employee2Address]
			SET [EmployeeId] = @EmployeeId,
			[AddressId] = @AddressId
			WHERE AddressId = @AddressId OR EmployeeId = @EmployeeId
		end
	SELECT @DBEmployeeId
	SELECT @DBAddressId
	RETURN @DBEmployeeId
	RETURN @DBAddressId
END
GO;
