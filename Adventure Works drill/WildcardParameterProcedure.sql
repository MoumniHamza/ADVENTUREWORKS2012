USE AdventureWorks2012
GO

/* A procedure that will bring the person adress using parameters the ISNULL and the wild card */

ALTER PROCEDURE uspGetAddress @City nvarchar(30) = NULL, @AddressLine1 nvarchar(60) = NULL
AS

SELECT *
FROM Person.Address
WHERE City = ISNULL(@City,City)
AND AddressLine1 LIKE '%' + ISNULL(@AddressLine1 ,AddressLine1) + '%'
GO


EXEC uspGetAddress @City = 'Calgary', @AddressLine1 = 'A'