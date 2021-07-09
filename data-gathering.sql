-- this document contains the SQL code to collect the needed data from the database into a single exportable table


select

CurrentEmployees.BusinessEntityID, CurrentEmployees.NationalIDNumber, CurrentEmployees.OrganizationNode, CurrentEmployees.OrganizationLevel, CurrentEmployees.JobTitle, CurrentEmployees.BirthDate, CurrentEmployees.MaritalStatus, CurrentEmployees.Gender, CurrentEmployees.HireDate, CurrentEmployees.SalariedFlag, CurrentEmployees.VacationHours, CurrentEmployees.SickLeaveHours

from AdventureWorks2019.HumanResources.Employee as CurrentEmployees

--only want info for current employees (CurrentFlag = 1)
where CurrentFlag = 1
