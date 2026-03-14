-- create Database
CREATE DATABASE Bankingsystem;
USE Bankingsystem;

-- create Customer table
CREATE TABLE Customer(
custmoer_id INT PRIMARY KEY AUTO_INCREMENT,
First_name VARCHAR(50) NOT NULL,
Last_name VARCHAR(50) NOT NULL,
email VARCHAR(100) UNIQUE NOT NULL,
phone_number VARCHAR(20) UNIQUE NOT NULL,
Address TEXT,
City VARCHAR(50),
Country VARCHAR(50),
Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP 
);

-- create Account table
CREATE TABLE Accounts(
Customer_id INT NOT NULL,
Account_type ENUM("saving","current","fixed_deposit"),
Acount_status ENUM("Active","Inactive") DEFAULT "Active",
Balance DECIMAL (15,2) DEFAULT 0.00,
Created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- create Transaction table
CREATE TABLE Transaction(
Account_id INT NOT NULL,
Transaction_type ENUM("Deposit","withdrawal","Transfer","payment","fee","Intrest") NOT NULL,
Amount DECIMAL (15,2) NOT NULL,
Transaction_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
Description TEXT
);

USE bankingsystem;
-- Get all columns for every customer
SELECT * FROM customer;
-- select specific columns
-- Get only customer name and contact information
SELECT 
First_name,
Last_name,
email,
phone_number
FROM customer;

-- Filter by condition
-- customers in a specific city
SELECT *
FROM customer
WHERE city = 'Lagos';

-- Accounts with balance over 100000
SELECT * FROM accounts
WHERE balance > 100000;

-- Filtering Transactions by type
-- Get all deposit transactions
SELECT * FROM transaction
WHERE transaction_type = 'Deposit';

-- Get all withdrawals over 5000
SELECT * FROM transaction
WHERE transaction_type ='withdrawal' AND amount > 5000;

-- combining Filters
-- complex filtering  with multiple conditions
SELECT * FROM transaction
WHERE transaction_type = 'TRANSFER'
AND amount BETWEEN 100000 AND 120000
AND transaction_date >= '2024-01-01';

-- Accounts with High balances greater than 100000
-- Get all accounts with balance greater 100000
SELECT * FROM accounts
WHERE 'balance' > 100000;

-- Get all customers in Lagos and Abuja
SELECT * FROM customer
WHERE city = 'Lagos' OR city = 'Abuja';

-- Get all inactive accounts
SELECT * FROM accounts
WHERE Acount_status != 'ACTIVE';

-- Get all transactions with amount between 1000 and 10000
SELECT * FROM transaction
WHERE Amount BETWEEN 1000 AND 10000;

-- Get all customers from Lagos city whose coountry is Nigeria
SELECT * FROM customer
WHERE city = 'Lagos' AND country = 'Nigeria';

-- Order customers by last name alphabetically (A to Z)
SELECT * FROM customer
ORDER BY Last_name ASC;

-- Order customers by first name alphabetically (A to Z)
SELECT * FROM customer
ORDER BY First_name ASC;

-- Highest Account balance first
-- Get all accounts with highest balance first
SELECT * FROM accounts 
ORDER BY Balance DESC;

-- Unique cities
-- Get all Unique cities where customers live
SELECT DISTINCT city
FROM customer
ORDER BY city;

-- Top 5 largest transactions
-- Get the 5 largest transactions by amount
SELECT * FROM transaction
ORDER BY amount DESC
LIMIT 5;

-- Next 5 transactions using LIMIT with offset
-- Get the next 5 largest transactions (ranked 6- 10)
SELECT * FROM transaction
ORDER BY amount DESC
LIMIT 5, 5; -- limit offset count









