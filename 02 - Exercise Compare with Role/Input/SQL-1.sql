select
	t.[SalesTerritoryGroup]
	, SUM([SalesAmount])
	, SUM([TaxAmt])
from
	[dbo].[FactInternetSales] f
inner join
	[dbo].[DimSalesTerritory] t
	on
		f.[SalesTerritoryKey]=t.[SalesTerritoryKey]
group by
	[SalesTerritoryGroup]