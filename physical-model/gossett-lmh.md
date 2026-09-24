# Database Design - Assignment 3 - Physical Model

## Physical Model Terms

**Physical Model vs. Conceptual vs. Logical Models:** A conceptual model gives a basic overview of the database and shows the main entities and how they will relate to each other. A logical model goes into more detail by showing the tables, attributes, primary keys, and foreign keys. A physical model is more specific because it shows how the database will actually be created in a specific database system using the data types, the ones I used are below.

**Common Data Types:**
  - INT - stores whole numbers.
  - SMALLINT - A small integer.
  - CHAR - A fixed-length nonbinary (character) string.
  - VARCHAR(n) - stores text with a maximum number of characters.
  - TEXT - stores larger amounts of text.
  - BOOLEAN - stores a true or false value.
  - DATE - stores a date.
  - TIMESTAMP - stores a date and time.

**Default Values / Null Values:** A default constraint is used to automatically insert a default value for a column, if no value is specified. A NULL value represents an unknown, missing, or inapplicable data in a database field. It is not a value itself, but a placeholder to indicate the absence of data. Fields marked NOT NULL have to contain a value.

**Check Constraints:** Check constraints enforce domain integrity by limiting the values that are accepted by one or more columns. I have one check constraint thats under is under the `Review` table that makes sure rating is grater than or equal to one but less then or equal to five.


> [!IMPORTANT]
> [Group Logical Model](https://github.com/Saucy-tgossett/WinSupply/blob/gossett-logicalmodel/logical-model/gossett-lmh.md)

## Physical Model 

<img width="1578" height="627" alt="Screenshot 2026-09-24 at 3 18 19 PM" src="https://github.com/user-attachments/assets/5691a38c-27c9-45a9-9a72-bf087bf74f39" />

## Description

The physical model has four tables: `Genre`, `Book`, `Review`, and `Comment`.

The `Genre` table is a lookup table that will store the coded genres. 

The `Book` table stores information about each book, including its title, author, genre, and page count. `BookID` is the primary key and automatically increases when a new book is added. `Book` has a one to many relationship with the `Review` table.

The `Review` table stores reviews for books. `ReviewID` is the primary key, and `BookID` is a foreign key that connects each review to a book. A book can have multiple reviews, but each review belongs to one book (one-to-many). `SimilarBooks` can be NULL because adding a similar book is optional.

The `Comment table` stores comments made on reviews. `CommentID` is the primary key, and `ReviewID` is a foreign key connecting the comment to a review. One review can have multiple comments, but each comment belongs to one review (one-to-many). `Timestamp` has a default value so the database can automatically record when a comment is posted.


## Referance 
  - [Logical Data Model Vs. Physical Data Model](https://aws.amazon.com/compare/the-difference-between-logical-and-physical-data-model/)
  - [MariaDB Data Types](https://www.mariadbtutorial.com/mariadb-basics/mariadb-data-types/)
  - [SQL DEFAULT Constraint](https://www.w3schools.com/sql/sql_default.asp)
  - [SQL NULL Values](https://www.w3schools.com/sql/sql_null_values.asp)
  - [Unique Constraints and Check Constraints](https://learn.microsoft.com/en-us/sql/relational-databases/tables/unique-constraints-and-check-constraints?view=sql-server-ver17#Check)

