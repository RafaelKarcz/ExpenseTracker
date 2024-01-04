-- Inserting Data into the Expenses Table for November 2023
INSERT INTO Expenses (Date, CategoryID, Amount, Description)
VALUES
    ('2023-11-01', 1, 60.69, 'Weekly grocieries'),
    ('2023-11-01', 2, 100.00, 'Electricity bill'),
    ('2023-11-01', 2, 45.50, 'Gas bill'),
    ('2023-11-01', 3, 400.00, 'Monthly housing bill'),
    ('2023-11-02', 4, 100.00, 'Monthly Transporatation fee'),
    ('2023-11-02', 5, 100.00, 'Emergency fund investment'),
    ('2023-11-08', 6, 80.89, 'Birthday party'),
    ('2023-11-09', 1, 50.78, 'Weekly groceries'),
    ('2023-11-10', 7, 60.00, 'Monthly subscriptions'),
    ('2023-11-15', 6, 16.99, 'Movie Theatre Tickets')
;

-- Inserting Data into the Expenses Table for December 2023
INSERT INTO Expenses (Date, CategoryID, Amount, Description)
VALUES
    ('2023-12-01', 1, 80.00, 'Weekly grocieries'),
    ('2023-12-01', 2, 100.00, 'Electricity bill'),
    ('2023-12-01', 2, 50.94, 'Gas bill'),
    ('2023-12-01', 3, 400.00, 'Monthly housing bill'),
    ('2023-12-02', 4, 100.00, 'Monthly Transporatation fee'),
    ('2023-12-02', 5, 100.00, 'Emergency fund investment'),
    ('2023-12-10', 6, 102.95, 'Christmas ingredients'),
    ('2023-12-10', 1, 80.00, 'Weekly groceries'),
    ('2023-12-10', 7, 60.00, 'Monthly subscriptions'),
    ('2023-12-19', 1, 53.60, 'Christmas Dinner shopping')
;

-- Inserting Categories into the Categories Table
INSERT INTO Categories (CategoryName)
VALUES
    ('Groceries'),
    ('Utilities'),
    ('Housing'),
    ('Transportation'),
    ('Emergency fund'),
    ('Other Expenses'),
    ('Subscriptions')
;

-- Inserting Income Sources into IncomeSources Table
INSERT INTO IncomeSources (SourceName)
VALUES
    ('Painting Jobs'),
    ('Freelance Programming'),
    ('Main Job'),
    ('Blogging'),
    ('Investments')
;

-- Inserting Data into the Income Table for November 2023
INSERT INTO Income (Date, IncomeSourceID, Amount, Description)
VALUES
    ('2023-11-01', 1, 1200.00, 'Painting job earnings'),
    ('2023-11-15', 2, 800.00, 'Freelance programming income'),
    ('2023-11-30', 3, 2500.00, 'Salary from main job'),
    ('2023-11-05', 4, 200.00, 'Income from blogging'),
    ('2023-11-20', 5, 140.00, 'Dividends from investments')
;

-- Inserting Data into the Income Table for December 2023
INSERT INTO Income (Date, IncomeSourceID, Amount, Description)
VALUES
    ('2023-12-01', 1, 1800.00, 'Painting job earnings'),
    ('2023-12-15', 2, 1000.00, 'Freelance programming income'),
    ('2023-12-31', 3, 2500.00, 'Salary from main job'),
    ('2023-12-10', 4, 170.00, 'Income from blogging'),
    ('2023-12-25', 5, 200.00, 'Dividends from investments')
;    
