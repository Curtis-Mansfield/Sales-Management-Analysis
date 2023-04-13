
--This is a dimmension table that looks at the product data. 
-- This joins in two tables for this query, they are 'ProductSubCategory' table and the 'Productcategory' table. 


SELECT 
  p.ProductKey AS product_key, 
  p.ProductAlternateKey AS product_item_code, 
  p.EnglishProductName AS product_name, 
  s.EnglishProductSubcategoryName AS product_sub_category, 
  c.EnglishProductCategoryName AS product_category, 
  p.Color AS product_color, 
  p.Size AS product_size, 
  p.ProductLine AS product_line, 
  p.ModelName AS product_model_name, 
  p.EnglishDescription AS product_description, 
  ISNULL (p.Status, 'Outadated') AS product_status  -- This isnull function takes the p.statsus columns and returns outdated if the value is null.
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p 
  LEFT JOIN DimProductSubcategory as s ON p.ProductSubcategoryKey = s.ProductSubcategoryKey		-- Using left join to join in the two tables. 
  LEFT JOIN DimProductCategory as c ON c.ProductCategoryKey = s.ProductCategoryKey	
ORDER BY 
  p.ProductKey ASC