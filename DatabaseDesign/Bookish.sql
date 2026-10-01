-- Query 1: Show all genres.
-- Lists every genre stored in the Genre table.
SELECT * 
From Genre;


-- Query 2: Show all books sorted by title
-- Lists each book's title and page count in alphabetical order.
SELECT Title, PageCount
FROM Book
ORDER BY Title;

-- Query 3: Show only 5-star reviews.
-- Uses WHERE to find the reviews with highest ratings
SELECT ReviewText, Rating
FROM Review
Where Rating = 5;

-- Query 4: Shows reviews where reviewer recommends the book.
-- IsRecommended is TRUE when the reviewer reccomends it.
SELECT ReviewText, Rating
FROM Review
WHERE IsRecommended = TRUE;

-- Query 5: Show each book with its genre name.
-- Uses JOIN to conect the Book table to the genre table through GenreID
SELECT Book.Title, Genre.GenreName
FROM Book
JOIN Genre ON Book.GenreID = Genre.GenreID;

-- Query 6: Show each review with the title of the book it's about
-- Uses JOIN to connect the Review table to the book table through BookID
SELECT Book.Title, Review.Rating, Review.ReviewText
FROM Review
JOIN Book ON Review.BOOKID = Book.BookID;

-- Query 7: Count the total number of reviews.
-- COUNT(*) counts the rows in the Review table. 
SELECT COUNT(*) AS TotalReviews
FROM Review;

-- Query 8: Count how many books are in each genre.
-- Count with GROUP BY gives one count per genre.
SELECT Genre.GenreName, Count(Book.BookID) AS NumberOfBooks
From Genre
JOIN Book ON Genre.GenreID = Book.GenreID
GROUP BY Genre.GenreName;

-- Query 9: Show the comments left on each review.
-- Uses JOIN to connect the Comment table to the Review table through ReviewID.
SELECT Review.ReviewText, Comment.CommentText
FROM Comment
JOIN Review ON Comment.ReviewID = Review.ReviewID;

-- Query 10: Search for books with a word in the title. 
-- LIKE with % finds any title that contains "The".
SELECT Title
FROM Book
Where Title LIKE '%The%';
