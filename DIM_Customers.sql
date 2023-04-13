-- This is a Dimmension table for the Customers data. 
-- This table joins in the Geography Table to get the required data.

SELECT 
  c.CustomerKey AS CustomerKey, 
  c.FirstName AS [First Name], 
  c.LastName AS [Last Name], 
  CASE[Gender] WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender, -- Changing the formatting of the gender column
  c.FirstName + ' ' + c.LastName AS [Full Name], 
  c.DateFirstPurchase AS DateFirstPurchase, 
  g.City AS City -- joining city from Geography table
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] AS c 
  LEFT JOIN DimGeography AS g on g.GeographyKey = c.GeographyKey	--- Joining gthe geograpgy table, in order to retirve the necessary data. 
ORDER BY 
  c.CustomerKey ASC -- Ordering by CustomerKey

