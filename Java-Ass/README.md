# Library Management System

A simple console-based Library Management System written in Java. This README is organized as an explanation document with terminal screenshots so you can present the project clearly.

## Project Overview

The application starts from `Main.java` and displays a menu to perform library operations.

Core functions:

- Add and view books
- Register and view users
- Issue and return books
- Explore a user profile with transaction details
- Calculate and display pending fines

## Source Files

- `Main.java` - Menu-driven program entry point
- `Library.java` - Main business logic for books, users, issue/return, and fine calculation
- `Book.java` - Book model (`id`, `title`, `author`, `quantity`)
- `User.java` - User model (`rollNo`, `name`, `year`, `department`) and transaction list
- `Transaction.java` - Issue/return tracking (`bookId`, `issueDate`, `returnDate`, `returned`)

## Fine Rule

- Fine-free period: first 15 days
- After 15 days: fine = number of extra days

Formula:

```text
fine = max(0, totalDays - 15)
```

## How to Run

Open terminal in the project folder and run:

```bash
javac *.java
java Main
```


### 1. Compile and Run

<img width="625" height="55" alt="image" src="https://github.com/user-attachments/assets/8f0798be-fde0-44df-9445-112987c737e0" />


### 2. Main Menu Display

Show all available options when the program starts.

<img width="255" height="228" alt="image" src="https://github.com/user-attachments/assets/f083be26-39f7-4aaf-8668-7c50d12a5edc" />


### 3. Add Book

Show entering `Book ID`, `Title`, `Author`, and `Quantity`, then the "Book added." output.

<img width="281" height="141" alt="image" src="https://github.com/user-attachments/assets/6051263e-15d9-45bd-ae98-0435d5b6111e" />


### 4. View Books

Show the list of books and available quantity.

<img width="525" height="56" alt="image" src="https://github.com/user-attachments/assets/131d207a-24b6-4f62-8e0f-9c561e8c8fc8" />


### 5. Register User

Show entering `Roll No`, `Name`, `Year`, and `Department`, then the "User registered." output.

<img width="203" height="142" alt="image" src="https://github.com/user-attachments/assets/51eb6487-2050-4994-95bd-2a483e765796" />


### 6. Issue Book

Show successful issue with user roll number and book ID.

<img width="428" height="97" alt="image" src="https://github.com/user-attachments/assets/3fea159a-3a86-457b-a075-b97a1f13d2aa" />



### 7. Return Book and Fine

Show return output including:

- total days
- calculated fine

<img width="219" height="138" alt="image" src="https://github.com/user-attachments/assets/36dedd54-7e9b-4be0-81b8-7d9eea1f8068" />


### 8. Explore User

Show user details with transaction status (`Active` or `Returned`) and total pending fine.

<img width="470" height="131" alt="image" src="https://github.com/user-attachments/assets/bff1732a-c124-4ba1-a7d7-e2b6a77c836a" />


### 9. View Pending Fines

Show pending-fine report for users (or "No pending fines.").

<img width="205" height="45" alt="image" src="https://github.com/user-attachments/assets/4214f695-2b29-4031-819c-e94b596598fa" />


## Limitations

- Data is stored in memory only
- All records reset when program exits
- Basic console input validation

## Future Improvements

- Add persistent storage (file or database)
- Add search by title/author
- Prevent duplicate `bookId` and `rollNo`
- Add exportable transaction reports
