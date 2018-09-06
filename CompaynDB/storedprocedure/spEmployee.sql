CREATE PROCEDURE [dbo].[spEmployee]
	@Id INT,
	@FirstName VARCHAR(256),
	@LastName VARCHAR(256),
	@Birthday DATE,
	@Job VARCHAR(256),
	@DepartmentId INT

AS
BEGIN
	SELECT @Id, @FirstName, @LastName, @Birthday, @Job, @DepartmentId

	DECLARE @DBId int
	Set @DBId = (SELECT Id FROM Employee WHERE Id = @Id)
	if(@DBId is NULL)
		begin
			INSERT INTO [dbo].[Employee]
				([FirstName],
				[LastName],
				[Birthday],
				[Job],
				[DepartmentId])
				VALUES
				(@FirstName,
				@LastName,
				@Birthday,
				@Job,
				@DepartmentId)
			SET @DBId = @@IDENTITY
		end
	else
		begin
			UPDATE [dbo].[Employee]
			SET [FirstName] = @FirstName,
			[LastName] = @LastName,
			[Birthday] = @Birthday,
			[Job] = @Job,
			[DepartmentId] = @DepartmentId
			WHERE Id = @Id
		end
	SELECT @DBId
	RETURN @DBId
END
GO;