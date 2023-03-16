use AdventureWorksDW2019
go 
select 
  ProductKey, 
  ProductAlternateKey as [Product iteam Code], 
  EnglishProductName as [Product Name],
  EnglishProductSubcategoryName AS [Sub Category],
  Color as [Product Color], 
  Size as [Product Size], 
  ProductLine as[Product Line], 
  EnglishProductCategoryName AS [Product Category],
  ModelName as [MOdel NAme], 
  EnglishDescription as [Product Description], 
  ISNULL (p.Status, 'Outdated') AS [Product Status] 
from 
  dbo.DimProduct p 
  LEFT JOIN dbo.DimProductSubcategory ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  LEFT JOIN dbo.DimProductCategory pc on pc.ProductCategoryKey = ps.ProductCategoryKey 
order by 
  ProductKey asc
