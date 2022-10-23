/****** Script for SelectTopNRows command from SSMS  ******/
SELECT 
  c.[CustomerKey] as Customer_Key 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  c.[FirstName] as Frist_Name 
  --,[MiddleName]
  , 
  c.[LastName] as Last_Name, 
  (c.FirstName + ' ' + c.LastName) as [Full_Name] 
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  , 
  CASE c.[Gender] When 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS GENDER 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  , 
  c.[DateFirstPurchase] 
  --,[CommuteDistance]
  , g.City 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c 
  JOIN [AdventureWorksDW2019].[dbo].DimGeography as g on c.GeographyKey = g.GeographyKey 
order by 
  c.CustomerKey
