/****** Script for SelectTopNRows command from SSMS  ******/
--cleaning dim_date table--
SELECT [DateKey] 
      ,[FullDateAlternateKey] AS DATE
      --,[DayNumberOfWeek]
      ,[EnglishDayNameOfWeek] AS DAY 
      --,[SpanishDayNameOfWeek]
      --,[FrenchDayNameOfWeek]
     -- ,[DayNumberOfMonth]
      --,[DayNumberOfYear]
      ,[WeekNumberOfYear] AS WEEKNUM
      ,[EnglishMonthName] AS MONTH,
	  LEFT([EnglishMonthName],3) AS MONTH_SHORT
     -- ,[SpanishMonthName]
      --,[FrenchMonthName]
      ,[MonthNumberOfYear] AS MONTHNUM
      ,[CalendarQuarter] AS QUATER
      ,[CalendarYear] AS YEAR
     -- ,[CalendarSemester]
      --,[FiscalQuarter]
      --,[FiscalYear]
     -- ,[FiscalSemester]
  FROM [AdventureWorksDW2019].[dbo].[DimDate]
  WHERE CalendarYear >= 2019