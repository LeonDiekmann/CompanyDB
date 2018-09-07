CREATE PROCEDURE [dbo].[spEmployee]
	@Id INT = NULL,
	@FirstName VARCHAR(256) = NULL,
	@LastName VARCHAR(256) = NULL,
	@Birthday VARCHAR(256) = NULL,
	@Gender INT = NULL,
	@Job VARCHAR(256) = NULL,
	@DepartmentId INT = NULL
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
			SET [FirstName] = case when @FirstName is null then FirstName else @FirstName end,
			[LastName] = case when @LastName is null then LastName else @LastName end,
			[Birthday] = case when @Birthday is null then Birthday else @Birthday end,
			[Gender] = case when @Gender is null then Gender else @Gender end,
			[Job] = case when @Job is null then Job else @Job end,
			[DepartmentId] = case when @DepartmentId is null then DepartmentId else @DepartmentId end
			WHERE Id = @Id
		end
	SELECT @DBId
	RETURN @DBId
END
GO;