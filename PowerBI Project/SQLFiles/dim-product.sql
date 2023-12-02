--cleaned dim_product table --
SELECT p.[ProductKey]
      ,p.[ProductAlternateKey] as ProductItemCode
      --,[ProductSubcategoryKey]
      --,[WeightUnitMeasureCode]
      --,[SizeUnitMeasureCode]
      ,p.[EnglishProductName] as [Product Name]
      ,ps.EnglishProductSubCategoryName as [Sub Category]
      ,pc.EnglishProductCategoryName as [Product Category]
      --,[StandardCost]
      --,[FinishedGoodsFlag]
      ,p.[Color] as [Product Color]
      --,[SafetyStockLevel]
      --,[ReorderPoint]
      --,[ListPrice]
      ,p.[Size] as [Product Size]
      --,[SizeRange]
      --,[Weight]
     -- ,[DaysToManufacture]
      ,p.[ProductLine] as [Product Line]
     -- ,[DealerPrice]
      --,[Class]
     -- ,[Style]
      ,p.[ModelName] as [Product Model Name]
      --,[LargePhoto]
      --,[EnglishDescription]
      --,[FrenchDescription]
      --,[ChineseDescription]
      --,[ArabicDescription]
      --,[HebrewDescription]
      --,[ThaiDescription]
      --,[GermanDescription]
      --,[JapaneseDescription]
     -- ,[TurkishDescription]
      --,[StartDate]
      --,[EndDate]
      ,isnull (p.Status, 'Outdated') as [Product Status] --we have null values in this feature so we prfer to change null into OUTDATED
  FROM [dbo].[DimProduct] as p
  left join dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey
  left join dbo.DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey
order by 
p.ProductKey asc