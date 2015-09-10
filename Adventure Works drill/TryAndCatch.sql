USE AdventureWorks2012
GO

/* Using TRY and CATCH to determines errors in your procedures */


CREATE PROCEDURE CatchingError
AS

BEGIN TRY
		SELECT 1/0
END TRY

BEGIN CATCH
		SELECT ERROR_NUMBER(),
			   ERROR_LINE(),
			   ERROR_PROCEDURE(),
			   ERROR_SEVERITY(),
			   ERROR_MESSAGE()
END CATCH
GO

EXEC CatchingError
GO