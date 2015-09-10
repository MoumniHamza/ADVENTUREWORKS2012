Use AdventureWorks2012
Go



/* A simple procedure using the inner join to fetch the rate and payfrequency on employees using the ADVENTUREWORK */

CREATE PROCEDURE EmployeePayRate @gender Varchar(1)
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