select
          [SalesTerritoryGroup]
          , AVG(f.SalesAmount)
          from
          [dbo].[DimSalesTerritory] d
          inner join
          [dbo].[FactInternetSales] f
          on
          f.[SalesTerritoryKey]=d.[SalesTerritoryKey]
          group by
          [SalesTerritoryGroup]