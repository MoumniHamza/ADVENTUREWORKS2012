USE AdventureWorks2012
GO

/* Adding the NOCOUNT ON to the begining of your procedure is a good practice because it does reduce the traffic network	
and improves the performance */



CREATE PROCEDURE personadress @City nvarchar(30)
AS
SET NOCOUNT ON
SELECT * 
FROM Person.Address
WHERE City = @City
PRINT @@ROWCOUNT  -- Will print the number of rows returned
GO


EXEC personadress 'atlanta'
GO