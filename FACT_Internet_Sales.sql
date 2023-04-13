-- This will be the fact table for the model that will be used in the visulation. 
-- This fact table will connect to the three dimmenion tables that are created, and will be mapped to dimmension tables using foriegn keys from the dimmension tables. 

SELECT 
  [ProductKey] AS product_key,	-- Using aliases to rename the cloumns selected to keep them uniform. 
  [OrderDateKey] AS order_date_key, 
  [DueDateKey] AS due_date_key, 
  [ShipDateKey] AS ship_date_key, 
  [CustomerKey] AS customer_key, 
  [SalesOrderNumber] AS sales_order_number, 
  [SalesAmount]  AS sales_amount
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales] 
WHERE 
  LEFT(OrderDateKey, 4) >= YEAR(GETDATE()) -3   -- Filters for the current Year than looks for results for three years back
ORDER BY 
  ProductKey ASC -- ORDERING BY the product key
