# Database Design - Assignment 5 - SQL Business Queries

## Common Database Concepts

**What is a SQL query?:** An SQL query is a request for data from the database. Queries can be used to find specific data, filter results, sort information, or get information from multiple tables.

**Describe the parts of a SELECT statement:** The `SELECT` statement retreaves data from one or more tables allowing *filtering*, *sorting*, and *joining* by using `FROM`, `WHERE`, `ON`, `GROUP BY`, `ORDER BY`, `JOIN`, `HAVING` and others I probably dont know yet. The `JOIN` operation is used to join data from different tables and has different join types called `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `FULL OUTER JOIN`. You can also rename columns (`AS`), get the unique data from a column (`DISTINCT`), and do math.

**Describe how to filter a query:** A query can be filtered using `WHERE`, the `WHERE` clause sets a condition that the data has to meet before it is included in the results.

**What are database indexes and what are the benefits of them:** A `database index` helps the database find information faster. Instead of searching through every row in a table, the database can use the index to quickly find the data it needs. Indexes are useful for columns that are searched, filtered, or sorted often. They can make queries run faster, especially when a database has a lot of information


> [!IMPORTANT]
> [Group Physical Model](https://github.com/Saucy-tgossett/WinSupply/tree/patel-physicaldb/physicaldb)


## Description

```
-- selects all books with there page count and genre and uses join to connect book to genre
SELECT Book.Title, Book.PageCount, Genre.GenreName
FROM Book;
JOIN Genre ON Book.GenreID = Genre.GenreID;
```

```
-- finds book with fantacy genre
SELECT Book.Title, Book.PageCount
FROM Book
JOIN Genre ON Book.GenreID = Genre.GenreID
WHERE Genre.GenreName = 'Fantasy';
```

```
-- shows just the recomended books
SELECT Book.Title, Review.Rating, Review.ReviewText
FROM Book
JOIN Review ON Book.BookID = Review.BookID
WHERE Review.IsRecommended = 1;
```
