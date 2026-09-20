# Database Design - Assignment 2 - Logical Model

## Logical Model Terms

**Purpose of a logical model:** it shows how data will be organized in a database. It'll shows the tables, attributes, and relationships between the data.

**Primary Key:** is a field that uniquely identifies each record in a table.

**Foreign Key:** is a field used to connect one table to another.

**Relationships between entities:** shows how tables are connected.

**Normalization:** organizes data to reduce repeated or duplicate information. It helps keep the database clean and easier to manage.


> [!IMPORTANT]
> [Group Conceptual Model](https://github.com/Saucy-tgossett/WinSupply/blob/gossett-conceptualmodel/conceptual-model/lastname-cmh.md)

## Logical Model 


## Description

The logical model has three tables: Book, Review, and Comment. The **Book** table holds the information about each book, **Review** holds the reviews for those books, and **Comment** holds the comments people leave on reviews. Each table has its own primary key to keep each entry separate. `BookID` connects a review to the book it is about, and `ReviewID` connects a comment to the review it was left on. This means one book can have multiple reviews, and one review can have multiple comments.
