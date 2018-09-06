CREATE FUNCTION [dbo].[fnGender]
(
	@Id int
)
RETURNS varchar(16)
AS
BEGIN
	RETURN CASE @Id
			WHEN  0 THEN 'Männlich'
			WHEN 1 THEN 'Weiblich'
			WHEN 2 THEN 'kompliziert'
			ELSE 'Nicht Definiert'
END
