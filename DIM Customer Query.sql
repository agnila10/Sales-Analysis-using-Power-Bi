--Cleansed DIM Customers Table--
SELECT 
       c.[CustomerKey] AS CustomerKey,
       --[GeographyKey]
       --[CustomerAlternateKey]
       --[Title]
       c.[FirstName],
       --[MiddleName]
       c.[LastName],
	   c.[FirstName] + ' '+ c.[LastName] AS FullName,
      --[NameStyle]
       --[BirthDate]
       --[MaritalStatus]
       --[Suffix]
CASE c.[Gender] when 'M' then 'Male' when 'F' then 'Female' End AS Gender,
       --[EmailAddress]
       --[YearlyIncome]
       --[TotalChildren]
       --[NumberChildrenAtHome]
       --[EnglishEducation]
       --[SpanishEducation]
       --[FrenchEducation]
       --[EnglishOccupation]
       --[SpanishOccupation]
       --[FrenchOccupation]
       --[HouseOwnerFlag]
       --[NumberCarsOwned]
       --[AddressLine1]
       --[AddressLine2]
       --[Phone]
       c.[DateFirstPurchase],
       --[CommuteDistance]
	   g.[City] AS CustomerCity --Joined in Customer City from Geography table
FROM 
       [AdventureWorksDW2019].[dbo].[DimCustomer] AS c
LEFT JOIN dbo.DimGeography AS g ON g.GeographyKey = c.GeographyKey
ORDER BY
       c.CustomerKey --Ordered list by Customer Key
