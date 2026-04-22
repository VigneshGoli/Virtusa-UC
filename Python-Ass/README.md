# Expense Tracker (Python)

A simple command-line expense tracker built with Python.

This project stores expense entries in a CSV file, lets you review and summarize spending, and visualizes category-wise expenses using a pie chart.

## Project Structure

- main.py: Main application with all menu options and logic.
- expenses.csv: Data file containing expense records.

## Requirements

- Python 3.8 or above
- matplotlib

Install dependency:

```bash
pip install matplotlib
```

## How to Run

From the project folder:

```bash
python main.py
```

Main menu shown by the app:

```text
--- Expense Tracker ---
1. Add Expense
2. View Expenses
3. Monthly Summary
4. Category Summary
5. Highest Spending Category
6. Show Pie Chart
7. Exit
```

## Data File Format

CSV header:

```text
date,category,amount,description
```

Fields:

- date: DD-MM-YYYY (example: 20-04-2026)
- category: Food, Travel, Bills, etc.
- amount: Numeric value
- description: Short note

---


### 1. Main Menu

Shows all available operations in the program.

![Main Menu](screenshots/01-main-menu.png)

### 2. Add Expense

The program asks for:

- date in DD-MM-YYYY format
- category
- amount
- description

If the date is valid, the record is appended to expenses.csv.

![Add Expense Input](screenshots/02-add-expense-input.png)
![Add Expense Success](screenshots/03-add-expense-success.png)

### 3. View Expenses

Displays all entries from expenses.csv in row format.

![View Expenses](screenshots/04-view-expenses.png)

### 4. Monthly Summary

Input month in MM-YYYY format (example: 03-2026).
The app calculates the sum of all expenses in that month.

![Monthly Summary](screenshots/05-monthly-summary.png)

### 5. Category Summary

Groups all expenses by category and prints total amount per category.

![Category Summary](screenshots/06-category-summary.png)

### 6. Highest Spending Category

Finds and displays the category with the highest total spending.

![Highest Spending Category](screenshots/07-highest-category.png)

### 7. Pie Chart Visualization

Creates a pie chart from category totals using matplotlib.

![Pie Chart](screenshots/08-pie-chart.png)

---

## Notes

- expenses.csv should be present in the same folder as main.py.
- Date input is validated, but amount input is not wrapped in try/except; non-numeric values can cause a crash.
- View output is printed directly as raw CSV rows (not table formatted).

## Optional Improvements

- Add amount input validation.
- Auto-create expenses.csv if missing.
- Display view output in clean table format.
- Add edit/delete functionality.
- Add date-range filter.
