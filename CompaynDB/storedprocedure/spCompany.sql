CREATE PROCEDURE [dbo].[spCompany]
	@name VARCHAR(256),
	@ceo int
AS
	SELECT @name, @ceo
GO;
