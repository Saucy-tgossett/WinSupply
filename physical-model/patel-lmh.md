# Database Design - Assignment 3 - Physical Model

## Physical Model

A physical model is the stage where the database design becomes closer to an actual database implementation. The conceptual model focuses on the main ideas and entities. The logical model adds more detail such as attributes, primary keys, foreign keys, and relationships. The physical model goes one step further by deciding the specific data types and database rules that will be used when the database is created.

### Data Types

* `INT` for whole numbers such as IDs, ratings, and page counts.
* `VARCHAR` for shorter text such as book titles, authors, and genres.
* `TEXT` for longer text such as a review.
* `BOOLEAN` for values that can be true or false.
* `DATE` for storing a calendar date.
* `TIMESTAMP` for storing a date and time.

### Default and NULL Values

A default value allows the database to automatically provide a value when one is not entered. For example, a date or timestamp can use the current date or time automatically when a new record is created.

`NULL` means that there is no value stored for that field. This can be useful when information is optional. For example, `similarBooks` does not have to contain information for every review, so it can be `NULL`.

Columns that are marked `NOT NULL` require a value when a record is created.

### Check Constraints

A check constraint is used to make sure that a value follows a specific rule. In our physical model, the `rating` in the `Review` table should be between 1 and 5. This prevents ratings outside of this range from being stored in the database

## Group Logical Model

[Group Logical Model](https://github.com/Saucy-tgossett/WinSupply/blob/gossett-logicalmodel/logical-model/gossett-lmh.md)

## Physical Model Diagram

<img width="2000" height="882" alt="Screenshot 2026-09-23 233545" src="https://github.com/user-attachments/assets/32d4f4dc-c75f-4d57-846a-3a3d31f4ba4f" />

## How the Physical Model Works

The database hasthree tables: Book, Review, and Comment. The Book table contains information about a book. bookId uniquely identifies each book and is the primary key. The other columns contain information such as the author, title, genre, and number of pages. The Review table is connected to Book through bookId. This is a foreign key because it refers to the primary key in the Book table. This allows multiple reviews to be associated with the same book. Each individual review has its own reviewId. A review contains the review text, rating, recommendation value, date posted, and optional similar-book information. The rating is stored as an integer. The Comment table is connected to Review through reviewId. This allows users to add multiple comments to a review. Each comment has its own commentId, while reviewId identifies which review the comment belongs to.

The relationships in the physical model are therefore:

- One book can have many reviews, whereas one review belongs to one book.
- One review can have many comments, whereas one comment belongs to one review.
