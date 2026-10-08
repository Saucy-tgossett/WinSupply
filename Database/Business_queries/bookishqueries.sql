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
