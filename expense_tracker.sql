-- Active: 1703155206960@@127.0.0.1@3306
CREATE DATABASE ExpenseTracker DEFAULT CHARACTER SET = 'utf8mb4';
USE ExpenseTracker;

-- Code for Expenses Table
CREATE TABLE Expenses (
    ID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryID INT,
    Date DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    Description TEXT
);

-- Code for Categories Table
CREATE TABLE Categories (
    CategoryID INT AUTO_INCREMENT PRIMARY KEY,
    CategoryName VARCHAR(255) NOT NULL UNIQUE
);

-- Adding Foreign Key Constraint to Expenses Table
ALTER TABLE Expenses
ADD CONSTRAINT fk_expense_category
FOREIGN KEY (CategoryID)
REFERENCES Categories(CategoryID)

-- Code for Income Table
CREATE TABLE Income (
    IncomeID INT AUTO_INCREMENT PRIMARY KEY,
    IncomeSourceID INT,
    Date DATE NOT NULL,
    Amount DECIMAL(10, 2) NOT NULL,
    Description TEXT
);

-- Code for IncomeSources Table
CREATE TABLE IncomeSources (
    IncomeSourceID INT AUTO_INCREMENT PRIMARY KEY,
    SourceName VARCHAR(255) NOT NULL UNIQUE
);

-- Adding Foreign Key Constraint to Income TABLE
ALTER TABLE Income
ADD CONSTRAINT fk_income_source
FOREIGN KEY (IncomeSourceID)
REFERENCES IncomeSources(IncomeSourceID) 