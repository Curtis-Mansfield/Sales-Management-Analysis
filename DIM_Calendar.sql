-- this query returns the selected date related data
-- This will be turned into a dimmension table that will be used later in the dashboard

use AdventureWorksDW2019;

SELECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  [EnglishDayNameOfWeek] AS Day, 
  [WeekNumberOfYear] AS Week_number, 
  [EnglishMonthName] AS Month, 
  LEFT([EnglishMonthName], 3) AS Month_short, 
  [MonthNumberOfYear] Month_number, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate] 
WHERE 
  [CalendarYear] >= 2019; -- USing a where clause to filter the data for 2019 or later
