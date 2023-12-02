--cleaned dim_customerTable --
SELECT 
  c.CustomerKey as CustomerKey 
  --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  , 
  c.firstname as [FirstName] 
  --,[MiddleName]
  , 
  c.lastname as [LastName], 
  c.firstname + ' ' + lastname as [FullName], 
  --,[NameStyle]
  --,[BirthDate]
  [MaritalStatus],
  --,[Suffix]
  Case c.gender when 'M' then 'Male' when 'F' then 'Female' end as Gender 
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
  c.DateFirstPurchase, 
  --,[CommuteDistance]
  g.city as [customer City] 
FROM 
  dbo.DimCustomer as c 
  left join dbo.DimGeography as g on g.GeographyKey = c.GeographyKey 
order by 
  CustomerKey asc --its just for ordered list by customer
  
  /*
  what is c.name?
  because we named dimcustomer as c and all of these table comes from customer table so 
  we use c. beside the name of the column
  
  also it is for g.name 
  i mean these are the same strategy
  */
