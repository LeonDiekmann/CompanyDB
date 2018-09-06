CREATE PROCEDURE [dbo].[spEmployee]
	@Id INT,
	@FirstName VARCHAR(256),
	@LastName VARCHAR(256),
	@Birthday VARCHAR(256),
	@Gender INT,
	@Job VARCHAR(256),
	@DepartmentId INT

AS
BEGIN
	SELECT @Id, @FirstName, @LastName, @Birthday, @Gender, @Job, @DepartmentId

	DECLARE @DBId int
	Set @DBId = (SELECT Id FROM Employee WHERE Id = @Id)
	if(@DBId is NULL)
		begin
			INSERT INTO [dbo].[Employee]
				([FirstName],
				[LastName],
				[Birthday],
				[Gender],
				[Job],
				[DepartmentId])
				VALUES
				(@FirstName,
				@LastName,
				@Birthday,
				@Gender,
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
			[Gender] = @Gender,
			[Job] = @Job,
			[DepartmentId] = @DepartmentId
			WHERE Id = @Id
		end
	SELECT @DBId
	RETURN @DBId
END
GO;