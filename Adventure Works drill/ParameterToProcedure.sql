Use AdventureWorks2012
Go



/* A simple procedure using the @gender parameter to fetch only the male employees */

ALTER PROCEDURE EmployeePayRate @gender Varchar(1)
AS

SELECT	HumanResources.Employee.BusinessEntityId, 
		HumanResources.Employee.JobTitle, 
		HumanResources.Employee.Gender,  
		HumanResources.Employee.HireDate, 
		HumanResources.EmployeePayHistory.Rate, 
		HumanResources.EmployeePayHistory.PayFrequency
FROM HumanResources.Employee INNER JOIN HumanResources.EmployeePayHistory
ON HumanResources.Employee.BusinessEntityID = HumanResources.EmployeePayHistory.BusinessEntityID
WHERE GENDER = @gender

GO

EXEC EmployeePayRate 'M'
GO