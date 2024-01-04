-- Query to calculate the total expenses for a specific MONTH and YEAR
SELECT
    COALESCE(SUM(Amount), 0) AS 'Total Expense'
FROM
    Expenses
WHERE
    MONTH(Date) = 11
    AND YEAR(Date) = 2023
;

-- Query to calculate the total expenses for the current MONTH
SELECT 
    SUM(Amount) AS 'Total Expense'
FROM 
    Expenses
WHERE
    MONTH(Date) = MONTH(CURRENT_DATE())
    AND YEAR(Date) = YEAR(CURRENT_DATE())
;

-- Query to list the total expenses by category
SELECT
    c.CategoryName,
    COALESCE(SUM(e.Amount), 0) AS Total
FROM
    Expenses AS e
JOIN Categories AS c ON e.CategoryID = c.CategoryID
GROUP BY
    c.CategoryName
ORDER BY
    Total DESC
;

-- Query to list the total expenses by category per specific MONTH and YEAR
SELECT
    c.CategoryName,
    COALESCE(SUM(e.Amount), 0) AS Total
FROM
    Expenses AS e
JOIN Categories AS c ON e.CategoryID = c.CategoryID
WHERE
    MONTH(Date) = 11
    AND YEAR(Date) = 2023
GROUP BY
    c.CategoryName
ORDER BY
    Total DESC
;

-- Query to list the total expenses by category for the current MONTH
SELECT
    c.CategoryName,
    COALESCE(SUM(e.Amount), 0) AS Total
FROM
    Expenses AS e
JOIN Categories AS c ON e.CategoryID = c.CategoryID
WHERE
    MONTH(Date) = MONTH(CURRENT_DATE())
    AND YEAR(Date) = YEAR(CURRENT_DATE())
GROUP BY
    c.CategoryName
ORDER BY
    Total DESC
;

-- Query to list the total expenses by category for a certain date period
SELECT
    c.CategoryName,
    COALESCE(SUM(e.Amount), 0) AS Total
FROM
    Expenses AS e
JOIN Categories AS c ON e.CategoryID = c.CategoryID
WHERE
    Date BETWEEN '2023-01-01' AND '2023-12-31'
GROUP BY
    c.CategoryName
ORDER BY
    Total DESC
;

-- Query to find the largest expense
SELECT
    *
FROM 
    Expenses
WHERE
    Date BETWEEN '2023-12-01' AND '2023-12-31'
ORDER BY
    Amount DESC
LIMIT 1
;

-- Query to analyze the monthly expense trend
SELECT 
    MONTH(Date) AS Month,
    YEAR(Date) AS Year,
    SUM(Amount) AS Total
FROM
    Expenses
GROUP BY 
    Year,
    Month
ORDER BY
    Year,
    Month
;

-- Query to analyze total income for a specific MONTH and YEAR
SELECT 
    COALESCE(SUM(Amount), 0) AS 'Total Income'
FROM
    Income
WHERE
    MONTH(Date) = 11
    AND YEAR(Date) = 2023
;

-- Query to analyze total income for current MONTH
SELECT
    COALESCE(SUM(Amount), 0) AS 'Total Income'
FROM
    Income
WHERE
    MONTH(Date) = MONTH(CURRENT_DATE())
    AND YEAR(Date) = YEAR(CURRENT_DATE())
;

-- Query to list total income by income source category per specific MONTH and YEAR
SELECT 
    s.SourceName, 
    COALESCE(SUM(i.Amount), 0) AS 'Total Income'
FROM
    Income AS i
JOIN
    IncomeSources AS s ON i.IncomeSourceID = s.IncomeSourceID
WHERE
    MONTH(Date) = 11
    AND YEAR(Date) = 2023
GROUP BY
    i.IncomeSourceID
ORDER BY
    'Total Income' DESC
;

-- Query to list total income by income source category per current MONTH
SELECT
    s.SourceName,
    COALESCE(SUM(i.Amount), 0) AS 'Total Income'
FROM
    Income AS i
JOIN
    IncomeSources AS s ON i.IncomeSourceID = s.IncomeSourceID
WHERE
    MONTH(Date) = MONTH(CURRENT_DATE())
    AND YEAR(Date) = YEAR(CURRENT_DATE())
GROUP BY
    i.IncomeSourceID
ORDER BY
    'Total Income' DESC
;

-- Query to list total income by income source category for a certain date period
SELECT
    s.SourceName,
    COALESCE(SUM(i.Amount), 0) AS 'Total Income'
FROM
    Income AS i
JOIN
    IncomeSources AS s ON s.IncomeSourceID = i.IncomeSourceID
WHERE
    Date BETWEEN '2023-11-01' AND '2023-12-31'
GROUP BY
    i.IncomeSourceID
ORDER BY
    'Total Income' DESC
;

-- Query to find the largest income
SELECT
    *
FROM
    Income
WHERE
    Date BETWEEN '2023-11-01' AND '2023-12-31'
ORDER BY
    Amount DESC
LIMIT 1
;

-- Query to analyze the monthly income trend
SELECT 
    MONTH(Date) AS Month,
    YEAR(Date) AS Year,
    SUM(Amount) AS Total
FROM
    Income
GROUP BY 
    Year,
    Month
ORDER BY
    Year,
    Month
;