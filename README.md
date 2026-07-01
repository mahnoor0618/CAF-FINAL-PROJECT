# CAF-FINAL-PROJECT
# Financial Fraud Detection Using R

This is a simple interactive program built in R that helps analyze transactions and identify potential financial fraud based on basic rules. It takes user input, evaluates the risk, generates a report, and shows visual plots.

## How it Works

The script evaluates each transaction and flags it as "Fraud" if it meets any of the following conditions:
* The transaction amount is greater than 100,000.
* The transaction time is between late night/early morning hours (0 to 4).
* The location is specified as "Foreign".

If none of these conditions are met, the transaction is marked as "Normal".

## Features Included

* **Interactive Input**: Prompts the user step-by-step for transaction data.
* **Summary Report**: Displays a detailed breakdown of each transaction along with total counts and the fraud percentage.
* **Visual Charts**: Automatically creates a Bar Plot and a Pie Chart at the end to visually compare Fraud vs Normal transactions.
