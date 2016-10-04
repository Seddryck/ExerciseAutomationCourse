select
	t.[SalesTerritoryGroup]
	, c.EnglishProductCategoryName
	, SUM([SalesAmount])
	, SUM([TaxAmt])
from
	[dbo].[FactInternetSales] f
inner join
	[dbo].[DimSalesTerritory] t
	on
		f.[SalesTerritoryKey]=t.[SalesTerritoryKey]
inner join
	[dbo].[DimProduct] p
	on
		f.[ProductKey]=p.[ProductKey]
inner join
	[dbo].[DimProductSubcategory] s
	on
		p.[ProductSubcategoryKey]=s.[ProductSubcategoryKey]
inner join
	[dbo].[DimProductCategory] c
	on
		s.[ProductCategoryKey]=c.[ProductCategoryKey]
group by
	[SalesTerritoryGroup], c.EnglishProductCategoryName