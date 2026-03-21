# Banking-system-Database-SQL-project
# Overview
This database system is designed to manage core banking operations, storing and retrieving information about customers, their accounts, and all financial transactions. It serves as an excellent example of relational database design for the banking domain and provides hands-on practice with SQL queries ranging from basic to intermediate levels
## Objectives
## The primary objectives of this project are to:
* Design a relational database schema for a banking system.
* Implement table relationships using primary and foreign keys.
* Populate the database with realistic sample banking data.
* Write SQL queries to retrieve, filter, and analyze financial records.  
* Demonstrate data organization and analytical querying techniques.   
## Database Structure
### The system consists of three main entities:
Customers Stores personal and demographic information about bank customers.

* customer_id
* first_name
* last_name
* email
* phone_number
* address

## 2. Accounts Table
## Manages all bank accounts with their current status and balance
* Customer_id: Links account to a customer (Foreign Key)
* Account_type: Supports three types - saving, current, fixed_deposit
* Account_status: Tracks if account is Active or Inactive (Defaults to Active)
* Balance: Current account balance with 2 decimal precision
* Created_at: Account opening timestamp

## 3. Transaction Table
      Records every financial transaction made on accounts
      Account_id: Identifies which account the transaction belongs to
      Transaction_type: Categorizes transactions (Deposit, withdrawal, Transfer, payment, fee, Interest)
      Amount: Transaction amount with 2 decimal precision
      Transaction_date: Automatic timestamp of when transaction occurred
      Description: Additional details about the transaction

## Basic Queries
Retrieve all customer information
SELECT * FROM customer;

## Select specific columns (customer names and contact details)
SELECT 
First_name,
Last_name,
email,
phone_number
FROM customer;

## Filtering Operations
Location-based: Find customers in specific cities (Lagos, Abuja)
SELECT *
FROM customer
WHERE city = 'Lagos';
## Balance-based: Identify accounts with balances over 100,000
SELECT * FROM accounts
WHERE balance > 100000;
## Transaction-based: Filter deposits, withdrawals, and transfers
SELECT * FROM transaction
WHERE transaction_type = 'Deposit';
## Amount ranges: Find transactions between 1,000 and 10,000
SELECT * FROM transaction
WHERE Amount BETWEEN 1000 AND 10000;
## Status-based: Locate inactive accounts
SELECT * FROM accounts
WHERE Acount_status != 'ACTIVE';

## Complex Filtering
Find customers meeting multiple criteria (city + country)
SELECT * FROM customer
WHERE city = 'Lagos' AND country = 'Nigeria';

## Sorting and Organization
Alphabetical sorting by customer names (ascending/descending)
SELECT * FROM customer
ORDER BY First_name ASC;
## Highest balance accounts first
SELECT * FROM accounts 
ORDER BY Balance DESC;

## Unique city listings (no duplicates)
SELECT DISTINCT city
FROM customer
ORDER BY city;
## Advanced Queries
Pagination: Get top 5 largest transactions
SELECT * FROM transaction
ORDER BY amount DESC
LIMIT 5;

## Offset queries: Retrieve next 5 transactions (ranks 6-10)
SELECT * FROM transaction
ORDER BY amount DESC
LIMIT 5, 5;
## Range queries: Using BETWEEN operator

## Key Learning Outcomes
This project helps you understand:
    Database Design: Proper table relationships, data types, and constraints
    Data Integrity: Primary keys, foreign keys, unique constraints, and default values
    SQL Fundamentals: SELECT, WHERE, ORDER BY, DISTINCT, LIMIT
    Filtering Techniques: Multiple conditions, BETWEEN, date filtering
    Business Logic: Banking domain concepts and transaction tracking

Real-world Scenarios: Queries that answer actual business questions

## Use Cases
Bank Management: Track customer base and account distribution
Fraud Detection: Monitor large or unusual transactions
Customer Service: Quick access to customer information
Reporting: Generate statements and transaction histories
Audit Trail: Complete record of all financial activities
Risk Management: Identify inactive accounts or unusual patterns

## Technologies Used
Database: MySQL / bankingsystemDB

Language: SQL (Structured Query Language)





