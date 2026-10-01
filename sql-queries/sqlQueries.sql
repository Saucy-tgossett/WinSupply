-- selects all books with there page count and genre and uses join to connect book to genre
SELECT Book.Title, Book.PageCount, Genre.GenreName
FROM Book;
JOIN Genre ON Book.GenreID = Genre.GenreID;

-- finds book with fantacy genre
SELECT Book.Title, Book.PageCount
FROM Book
JOIN Genre ON Book.GenreID = Genre.GenreID
WHERE Genre.GenreName = 'Fantasy';

-- shows just the recomended books
SELECT Book.Title, Review.Rating, Review.ReviewText
FROM Book
JOIN Review ON Book.BookID = Review.BookID
WHERE Review.IsRecommended = 1;