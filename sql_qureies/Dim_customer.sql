use AdventureWorksDW2019
go 
select 
  c.CustomerKey, 
  --c.FirstName,c.LastName,c.MiddleName,the middle name was not included becase most values are single alphabet or null
  FirstName + ' ' + c.LastName as Full_name, 
  case c.Gender When 'M' then 'Male' when 'F' then 'Female' End as Gender, 
  c.DateFirstPurchase, 
  g.City as Coustomer_city 
from 
  dbo.DimCustomer c 
  left join dbo.DimGeography g --left joint is performed between two tables
  on g.GeographyKey = c.GeographyKey 
order by 
  c.CustomerKey asc
