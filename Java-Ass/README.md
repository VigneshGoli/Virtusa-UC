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

![alt text](image-1.png)

### 2. Main Menu Display

Show all available options when the program starts.

![Main Menu](assets/screenshots/02-main-menu.png)

### 3. Add Book

Show entering `Book ID`, `Title`, `Author`, and `Quantity`, then the "Book added." output.

![Add Book](assets/screenshots/03-add-book.png)

### 4. View Books

Show the list of books and available quantity.

![View Books](assets/screenshots/04-view-books.png)

### 5. Register User

Show entering `Roll No`, `Name`, `Year`, and `Department`, then the "User registered." output.

![Register User](assets/screenshots/05-register-user.png)

### 6. Issue Book

Show successful issue with user roll number and book ID.

![Issue Book](assets/screenshots/06-issue-book.png)

### 7. Return Book and Fine

Show return output including:

- total days
- calculated fine

![Return Book and Fine](assets/screenshots/07-return-book-fine.png)

### 8. Explore User

Show user details with transaction status (`Active` or `Returned`) and total pending fine.

![Explore User](assets/screenshots/08-explore-user.png)

### 9. View Pending Fines

Show pending-fine report for users (or "No pending fines.").

![Pending Fines](assets/screenshots/09-pending-fines.png)

## Tips for Good Screenshots

- Use the same terminal theme and font size for all images
- Capture full command + output together
- Keep one screenshot per feature for easy explanation
- If output is long, take two images: input and result

## Limitations

- Data is stored in memory only
- All records reset when program exits
- Basic console input validation

## Future Improvements

- Add persistent storage (file or database)
- Add search by title/author
- Prevent duplicate `bookId` and `rollNo`
- Add exportable transaction reports
