-- this document contains the SQL code to collect the needed data from the database into a single exportable table


select

--columns wanted from the hr.employee table
CurrentEmployees.BusinessEntityID, CurrentEmployees.NationalIDNumber, CurrentEmployees.OrganizationNode, CurrentEmployees.OrganizationLevel, CurrentEmployees.JobTitle, CurrentEmployees.BirthDate, CurrentEmployees.MaritalStatus, CurrentEmployees.Gender, CurrentEmployees.HireDate, CurrentEmployees.SalariedFlag, CurrentEmployees.VacationHours, CurrentEmployees.SickLeaveHours,

--columns wanted from the hr.employeepayhistory table
PayHistory.Rate, PayHistory.PayFrequency, PayHistory.RateChangeDate,

--columns wanted from the person.person table
Person.PersonType, Person.Demographics

--use the hr.employee table as the left table
from AdventureWorks2019.HumanResources.Employee as CurrentEmployees

left join

--add columns that include pay history information for current employees
AdventureWorks2019.HumanResources.EmployeePayHistory as PayHistory
on CurrentEmployees.BusinessEntityID = PayHistory.BusinessEntityID

left join

--add columns that include demographic information for current employees
AdventureWorks2019.Person.Person as Person
on CurrentEmployees.BusinessEntityID = Person.BusinessEntityID

--only want info for current employees (CurrentFlag = 1)
where CurrentFlag = 1
