-- this document contains the SQL code to collect the needed data from the database into a single exportable table


select

--columns wanted from the hr.employee table
CurrentEmployees.BusinessEntityID, CurrentEmployees.NationalIDNumber, CurrentEmployees.OrganizationNode, CurrentEmployees.OrganizationLevel, CurrentEmployees.JobTitle, CurrentEmployees.BirthDate, CurrentEmployees.MaritalStatus, CurrentEmployees.Gender, CurrentEmployees.HireDate, CurrentEmployees.SalariedFlag, CurrentEmployees.VacationHours, CurrentEmployees.SickLeaveHours,

--columns wanted from the hr.employeepayhistory table
PayHistory.Rate, PayHistory.PayFrequency, PayHistory.RateChangeDate,

--columns wanted from the person.person table
Person.PersonType, Person.Demographics,

--columns wanted from the person.address table
AddressInfo.AddressLine1, AddressInfo.AddressLine2, AddressInfo.City, AddressInfo.PostalCode, AddressInfo.SpatialLocation,

--columns wanted from the person.stateprovince table
StateProvince.StateProvinceCode, StateProvince.CountryRegionCode, StateProvince.Name, StateProvince.TerritoryID

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

left join

--add columns that include address reference information for current employees
AdventureWorks2019.Person.BusinessEntityAddress as AddressKey
on CurrentEmployees.BusinessEntityID = AddressKey.BusinessEntityID

left join

--add columns that include address infromation for current employees
AdventureWorks2019.Person.Address as AddressInfo
on AddressKey.AddressID = AddressInfo.AddressID

left join

--add columns that include the state and province portion of the address information for current employees
AdventureWorks2019.Person.StateProvince as StateProvince
on AddressInfo.StateProvinceID = StateProvince.StateProvinceID

--only want info for current employees (CurrentFlag = 1)
where CurrentFlag = 1

--also only want info that uses home addresses for people (AddressTypeID = 2)
and  AddressKey.AddressTypeID = 2