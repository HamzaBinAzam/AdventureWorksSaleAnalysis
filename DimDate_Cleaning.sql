--Cleaning DimDate Table
SELECT 
  [DateKey] as [Date Key],
  [FullDateAlternateKey] as date
  --,[DayNumberOfWeek]
  , 
  [EnglishDayNameOfWeek] as Day
  --,[SpanishDayNameOfWeek]
  --,[FrenchDayNameOfWeek]
  --,[DayNumberOfMonth]
  -- ,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] as Week_of_Year, 
  [EnglishMonthName] as Month
  ,LEFT(EnglishMonthName, 3) as Month_Short
  --,[SpanishMonthName]
  --,[FrenchMonthName]
  , 
  [MonthNumberOfYear] as Month_Number, 
  [CalendarQuarter] as Quarter,
  [CalendarYear] as Year
  --,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2019].[dbo].[DimDate]
WHERE CalendarYear >= 2020;
