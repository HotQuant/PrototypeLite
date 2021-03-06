SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [hq].[tvf_Core_Rows] 
(	
	@n int
)
RETURNS TABLE 
RETURN 
(
	WITH A(n) AS
	(
		SELECT 1 

		UNION ALL

		SELECT A.n * 2
		FROM 
			A
			CROSS APPLY (
				SELECT n = 1 
				UNION ALL SELECT 1 
			) B
		WHERE A.n < @n
	)

	SELECT TOP(@n)
		i = ROW_NUMBER() OVER(ORDER BY (SELECT NULL)) 
	FROM A
)
GO
