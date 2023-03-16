use AdventureWorksDW2019 
go 
select 
  ProductKey, 
  OrderDateKey, 
  DueDateKey, 
  ShipDateKey, 
  CustomerKey, 
  SalesOrderNumber, 
  SalesAmount 
from 
  dbo.FactInternetSales 
where 
  LEFT(OrderDateKey, 4) >= YEAR(
    GETDATE()
  ) -2 
order by 
  OrderDateKey ASC
