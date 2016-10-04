select
          [SalesTerritoryGroup]
          , MAX(dd.FullDateAlternateKey)
          from
          [dbo].[DimSalesTerritory] d
          inner join
          [dbo].[FactInternetSales] f
          on
          f.[SalesTerritoryKey]=d.[SalesTerritoryKey]
          inner join
          [dbo].[DimDate] dd
          on
          dd.DateKey=f.OrderDateKey
          where
          [ProductKey]=310
          group by
          [SalesTerritoryGroup]