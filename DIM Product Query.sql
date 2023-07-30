SELECT 
       p.[ProductKey],
       p.[ProductAlternateKey] AS ProductItemKey,
       --[ProductSubcategoryKey]
       --[WeightUnitMeasureCode]
       --[SizeUnitMeasureCode]
       p.[EnglishProductName] AS ProductName,
	   ps.[EnglishProductSubcategoryName] AS SubCategory, --Joined in from Sub Category Table
	   pc.[EnglishProductCategoryName] AS ProductCategory, --Joined in from Category Table
       --[SpanishProductName]
       --[FrenchProductName]
       --[StandardCost]
       --[FinishedGoodsFlag]
       p.[Color] AS ProductColor,
       --[SafetyStockLevel]
       --[ReorderPoint]
       --[ListPrice]
       p.[Size] AS ProductSize,
       --[SizeRange]
       --[Weight]
       --[DaysToManufacture]
       p.[ProductLine],
       --[DealerPrice]
       --[Class]
       --[Style]
       p.[ModelName] AS ProductModelName,
       --[LargePhoto]
       p.[EnglishDescription] AS ProductDescription,
       --[FrenchDescription]
       --[ChineseDescription]
       --[ArabicDescription]
       --[HebrewDescription]
       --[ThaiDescription]
       --[GermanDescription]
       --[JapaneseDescription]
       --[TurkishDescription]
       --[StartDate]
       --[EndDate]
       p.[Status],
       ISNULL(p.[Status], 'Outdated') AS ProductStatus
FROM 
[AdventureWorksDW2019].[dbo].[DimProduct] as p
LEFT JOIN dbo.DimProductSubcategory AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey
LEFT JOIN dbo.DimProductCategory AS pc ON pc.ProductCategoryKey = pc.ProductCategoryKey
ORDER BY
p.ProductKey ASC

