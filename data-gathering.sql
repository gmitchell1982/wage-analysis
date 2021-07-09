-- this document contains the SQL code to collect the needed data from the database into a single exportable table


select

--columns wanted from the hr.employee table
CurrentEmployees.BusinessEntityID, CurrentEmployees.NationalIDNumber, CurrentEmployees.OrganizationNode, CurrentEmployees.OrganizationLevel, CurrentEmployees.JobTitle, CurrentEmployees.BirthDate, CurrentEmployees.MaritalStatus, CurrentEmployees.Gender, CurrentEmployees.HireDate, CurrentEmployees.SalariedFlag, CurrentEmployees.VacationHours, CurrentEmployees.SickLeaveHours,

--columns wanted from the hr.employeepayhistory table
PayHistory.Rate, PayHistory.PayFrequency, PayHistory.RateChangeDate

--use the hr.employee table as the left table
from AdventureWorks2019.HumanResources.Employee as CurrentEmployees

left join

--add columns that include pay history information for current employees
AdventureWorks2019.HumanResources.EmployeePayHistory as PayHistory
on CurrentEmployees.BusinessEntityID = PayHistory.BusinessEntityID

--only want info for current employees (CurrentFlag = 1)
where CurrentFlag = 1
