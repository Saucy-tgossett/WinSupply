# Database Design - Model Summary

## 1. Conceptual Model

### Description

The conceptual model shows the main entities and their relationships. It focuses on the overall structure of the database that anyone can understand it.

The main entities in the conceptual model are **Genre, Book, Review, and Comment**.

- A **Genre** can have many Books.
- A **Book** can have many Reviews.
- A **Review** can have many Comments.
- A **Book** belongs to one Genre.
- A **Review** belongs to one Book.
- A **Comment** belongs to one Review.

![Conceptual Model](/images/conceptual.png)

---

## 2. Logical Model

### Description

Logical model shows the attributes for each entity and identifies the primary keys and foreign keys needed to connect the tables.

The logical model contains four tables: **Genre, Book, Review, and Comment**.

- **GenreID** is the primary key of the Genre table.
- **BookID** is the primary key of the Book table and **GenreID** is a foreign key.
- **ReviewID** is the primary key of the Review table and **BookID** is a foreign key.
- **CommentID** is the primary key of the Comment table and **ReviewID** is a foreign key.

The relationships are:

- Genre → Book: one-to-many
- Book → Review: one-to-many
- Review → Comment: one-to-many

![Logical Model](/images/logical.png)

---

## 3. Physical Model

### Description

Physical includes database-specific data types, primary keys, foreign keys, required fields, and other constraints.



### Physical Model Source Code

```
// Physical Model - Bookish

Table Genre {
  GenreID SMALLINT [pk, not null, increment]
  GenreName VARCHAR(50) [not null, unique]
}

Table Book {
  BookID INT [pk, not null, increment]
  GenreID SMALLINT [not null]
  Title VARCHAR(50) [not null]
  PageCount SMALLINT
}

Table Review {
  ReviewID INT [pk, not null, increment]
  BookID INT [not null]
  ReviewText VARCHAR(3500) [not null]
  Rating TINYINT [not null]
  IsRecommended BOOLEAN [not null]
  DatePosted DATETIME [not null]
}

Table Comment {
  CommentID INT [pk, not null, increment]
  ReviewID INT [not null]
  CommentText VARCHAR(2500) [not null]
  DatePosted DATETIME [not null]
}

Ref: Genre.GenreID < Book.GenreID
Ref: Book.BookID < Review.BookID
Ref: Review.ReviewID < Comment.ReviewID
```
![Physical Model](/images/physical.png)
