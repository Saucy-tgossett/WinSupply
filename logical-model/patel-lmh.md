# Database Design - Assignment 2 - Logical Model

## Purpose of a Logical Model

The purpose of a logical model is to show how the data for a system will be organized in a database. It shows the tables, attributes, primary keys, foreign keys, and relationships between the tables.

## Primary Key

A primary key is a unique value that identifies each record in a table. Each table should have a primary key so that the database can identify each record separately.

## Foreign Key

A foreign key is an attribute that connects one table to another table. A foreign key usually references the primary key of another table.

## Relationships Between Entities

Relationships describe how the records in different tables are connected.

## Normalization

Normalization is the process of organizing data into separate tables to reduce unnecessary duplication and keep the data consistent.

---

## Group Conceptual Model

> [!IMPORTANT]
> [Group Conceptual Model](https://github.com/Saucy-tgossett/WinSupply/blob/gossett-conceptualmodel/conceptual-model/lastname-cmh.md)

---

## Logical Model

<img width="1424" height="676" alt="image" src="https://github.com/user-attachments/assets/c03236b3-bbd1-4def-85b5-6d1071d494f4" />

### Description

The logical model for Book Finder contains three tables:

- Book
- Review
- Comment

The Book table stores information about books. The Review table stores reviews and connects each review to a book. The Comment table stores comments and connects each comment to a review.

