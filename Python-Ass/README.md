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

<img width="275" height="200" alt="image" src="https://github.com/user-attachments/assets/823e8209-28e3-48d5-b84a-0c8f2a49b777" />


### 2. Add Expense

The program asks for:

- date in DD-MM-YYYY format
- category
- amount
- description

<img width="458" height="138" alt="image" src="https://github.com/user-attachments/assets/07a3dd43-7d35-4668-a626-aaa7fb407844" />

### 3. View Expenses

Displays all entries from expenses.csv in row format.

<img width="748" height="494" alt="image" src="https://github.com/user-attachments/assets/13126202-e688-43b4-afad-178bb6949212" />

### 4. Monthly Summary

Input month in MM-YYYY format (example: 03-2026).
The app calculates the sum of all expenses in that month.

<img width="337" height="38" alt="image" src="https://github.com/user-attachments/assets/55983a50-09ef-4ce0-bd2d-bb66b249a664" />

### 5. Category Summary

Groups all expenses by category and prints total amount per category.

<img width="243" height="153" alt="image" src="https://github.com/user-attachments/assets/e0a8fd42-3d61-4b3c-bcb5-dd80802eeb8b" />

### 6. Highest Spending Category

Finds and displays the category with the highest total spending.

<img width="358" height="163" alt="image" src="https://github.com/user-attachments/assets/c48b2e43-6e50-4c44-8e77-0a1b71b2a3fd" />


### 7. Pie Chart Visualization

Creates a pie chart from category totals using matplotlib.

<img width="763" height="560" alt="image" src="https://github.com/user-attachments/assets/b5d5da37-0c6b-4ead-86f3-bb9d40aa3bb4" />


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
