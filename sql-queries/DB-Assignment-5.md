# Database Design - Assignment 5 - SQL Business Queries

> [!IMPORTANT]
> [Group Physical Model](https://github.com/Saucy-tgossett/WinSupply/blob/gossett-physicalmodel/physical-model/gossett-lmh.md)

---

> [!IMPORTANT]
> [Group database script](https://github.com/Saucy-tgossett/WinSupply/blob/main/bookish.sql)

---

## 3. Common Database Concepts

**What is a SQL Query?**
- A SQL query is a command used to communicate with a database. It can be used to get information from tables, add new information, update information, or delete information.

---

**Parts of a SELECT Statement**

- The SELECT statement is used to retrieve information from a database. The main parts of a SELECT statement are SELECT, FROM, WHERE, and ORDER BY. `SELECT` specifies the columns that we want to see, `FROM` specifies the table that we want to get the information from, `WHERE` filters the rows based on a condition and `ORDER BY` sorts the results in ascending or descending order.

**How to Filter a Query**

- A query can be filtered by using the `WHERE` clause. The `WHERE` clause allows us to return only the rows that match a specific condition. Some common operators used for filtering are =, <, >, <=, >=, and <>. Multiple conditions can also be combined using AND or OR.

**Database Indexes**
- A database index is a data structure that helps the database find information in a table more efficiently. Indexes can improve the performance of SELECT queries, especially when a table contains a large number of records. However, indexes also require additional storage and can make INSERT, UPDATE, and DELETE operations take more work because the index may also need to be updated. Indexes are useful for columns that are frequently used for searching, filtering, or joining tables.

---

## 4. SQL Business Queries
```sql
1. SELECT BookID, Title, GenreID, PageCount
   FROM Book;

2. SELECT Book.Title, Genre.GenreName
   FROM Book
   JOIN Genre
   ON Book.GenreID = Genre.GenreID
   WHERE Genre.GenreName = 'Fantasy';

3. SELECT ReviewID, ReviewText, Rating, IsRecommended, DatePosted
   FROM Review
   WHERE IsRecommended = TRUE
   ORDER BY Rating DESC;

4. SELECT ReviewID, BookID, ReviewText, Rating, IsRecommended
   FROM Review
   WHERE Rating >= 4
   ORDER BY Rating DESC;

5. SELECT Review.ReviewText, Book.Title, Genre.GenreName, Review.Rating, Review.IsRecommended 
   FROM Review
   JOIN Book
   ON Review.BookID = Book.BookID
   JOIN Genre
   ON Book.GenreID = Genre.GenreID;

6. SELECT ReviewID, BookID, ReviewText, Rating, IsRecommended, DatePosted
   FROM Review
   ORDER BY DatePosted ASC;

7. SELECT ReviewID, BookID, ReviewText, Rating, IsRecommended, DatePosted
   FROM Review
   ORDER BY DatePosted DESC;

8. SELECT
   Comment.CommentID,
   Comment.ReviewID,
   Comment.CommentText,
   Comment.DatePosted
   FROM Comment
   JOIN Review
   ON Comment.ReviewID = Review.ReviewID
   WHERE Review.BookID = 1;

```
---

## 5. Description of SQL Queries

***Query 1***
- This query displays all books from the Book table. It shows the BookID, book name, author, genre ID, and number of pages.

***Query 2***
- This query finds books that belong to the Fantasy genre. It uses a JOIN between the Book and Genre tables to display the book name, author, and genre name.

***Query 3***
- This query displays reviews that recommend the book. The reviews are sorted by rating from highest to lowest.

***Query 4***
- This query displays reviews with a rating of 4 or higher. The reviews are sorted from the highest rating to the lowest rating.

***Query 5***
- This query displays all reviews from the Review table with book name, its genre, rating and recommendation.

***Query 6***
- This query displays all reviews sorted by DatePosted from the oldest review to the newest review.

***Query 7***
- This query displays all reviews sorted by DatePosted from the newest review to the oldest review.

***Query 8***
- This query displays all comments related to a specific book. It joins the Comment and Review tables using ReviewID and then filters the results using the BookID.
