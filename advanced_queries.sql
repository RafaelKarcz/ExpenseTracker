-- Query to compare monthly expenses with monthly income
SELECT
    e.Month,
    e.Year,
    e.TotalExpenses,
    i.TotalIncome
FROM
    (SELECT
        MONTH(Date) AS Month,
        YEAR(Date) AS Year,
        SUM(Amount) AS TotalExpenses
    FROM
        Expenses
    GROUP BY
        Year,
        Month
    ) AS e
JOIN
    (SELECT
        MONTH(Date) AS Month,
        YEAR(Date) AS Year,
        SUM(Amount) AS TotalIncome
    FROM
        Income
    GROUP BY
        Year,
        Month
    ) AS i
ON e.Month = i.Month AND e.Year = i.Year
;

-- Query to calculate the running total of expenses
SELECT
    Date,
    Amount,
    SUM(Amount) OVER (ORDER BY ID) AS 'Running Total'
FROM
    Expenses
;

-- Query to categorize expenses into different High, Medium, and Low expenses
SELECT
    Date,
    Amount,
    CASE
        WHEN Amount > 100 THEN 'High'
        WHEN Amount BETWEEN 50 AND 100 THEN 'Medium'
        ELSE 'Low'
    END AS 
        ExpenseCategory
FROM
    Expenses
;

-- Query to find individual expenses in each category that are above the average spending for that category
WITH
    CategoryAverages AS (
        SELECT
            CategoryID,
            AVG(Amount) AS AvgAmount
        FROM
            Expenses
        GROUP BY
            CategoryID
    )
SELECT
    e.Date,
    e.CategoryID,
    c.CategoryName,
    e.Amount,
    e.Description
FROM
    Expenses AS e
JOIN
    Categories AS c ON e.CategoryID = c.CategoryID
WHERE
    e.Amount > (
        SELECT
            AvgAmount
        FROM
            CategoryAverages
        WHERE
            CategoryID = e.CategoryID
    )
ORDER BY
    e.Date,
    c.CategoryName
;