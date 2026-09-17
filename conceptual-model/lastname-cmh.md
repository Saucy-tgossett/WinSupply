# Database Design - Assignment 1: Conceptual Model

## Common Conceptual Model Terms

**Purpose of a conceptual model:** is to show the main data and how it is connected before creating the actual database.

**Entity:** A person, place, object, or thing that we want to store information about.

**Attribute:** A piece of information that describes an entity.

**Relationship:** Shows how two or more entities are connected.

## Conceptual Model

<img width="1560" height="594" alt="Concept map" src="https://github.com/user-attachments/assets/f334d61d-b599-4787-91a7-c3b4062fcc1c" />

## Description

The **Book** entity represents the book thats being reviewed. Its attributes are title, author, genre, and page count. The genre can also be used when searching for books and reviews. The **Review** entity represents a review or recommendation made about a book. Its attributes are star rating, review text, recommended, and similar recommendations. The **Comment** entity represents a comment posted on a review. Its attributes are comment ID, comment text, date posted, and time posted. A **Book has Reviews** because reviews are written about a specific book. A book can have multiple reviews, but each review is for one book. A **Review has Comments** because people can comment on a posted review. A review can have multiple comments, but each comment belongs to one review.
