
-- Script of Genre
CREATE TABLE Genre
(
   GenreID           SMALLINT     NOT NULL  AUTO_INCREMENT               COMMENT 'PK for Genre'
  ,GenreName         VARCHAR(50)  NOT NULL                               COMMENT 'Genre Name'

  ,PRIMARY KEY (GenreID)
)
COMMENT = 'Book Genre'
;

-- Makes sure GenreName is unique
ALTER TABLE Genre
  ADD CONSTRAINT Genre_UK
  UNIQUE (GenreName)
;

-- Insert data
INSERT INTO Genre (GenreName) VALUES ('Fantasy');
INSERT INTO Genre (GenreName) VALUES ('Romance');
INSERT INTO Genre (GenreName) VALUES ('Mystery');
INSERT INTO Genre (GenreName) VALUES ('Thriller');
INSERT INTO Genre (GenreName) VALUES ('Horror');
INSERT INTO Genre (GenreName) VALUES ('Science Fiction');
INSERT INTO Genre (GenreName) VALUES ('Historical Fiction');
INSERT INTO Genre (GenreName) VALUES ('Nonfiction');
INSERT INTO Genre (GenreName) VALUES ('Dystopian');


-- Script of book

CREATE TABLE Book
(
   BookID            INTEGER      NOT NULL  AUTO_INCREMENT               COMMENT 'PK for Book'
  ,GenreID           SMALLINT     NOT NULL                               COMMENT 'FK for Genre'
  ,Title             VARCHAR(50)  NOT NULL                               COMMENT 'Book Title'
  ,PageCount         SMALLINT                                            COMMENT 'Page Count'

  ,PRIMARY KEY (BookID)
)
COMMENT = 'Book'
;

ALTER TABLE Book
  ADD CONSTRAINT book_fk_genre
  FOREIGN KEY (GenreID)
  REFERENCES Genre (GenreID)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT
;



-- Script of Review

CREATE TABLE Review
(
  ReviewID        INT            NOT NULL  AUTO_INCREMENT               COMMENT 'PK for Review'
  ,BookID         INT            NOT NULL                               COMMENT 'Book ID'
  ,ReviewText     VARCHAR(3500)  NOT NULL                               COMMENT 'Review Text'
  ,Rating         TINYINT        NOT NULL                               COMMENT 'Rating from 1 to 5'
  ,IsRecommended  BOOLEAN        NOT NULL                               COMMENT 'Whether the reviewer recommends the book'
  ,DatePosted     DATETIME       NOT NULL                               COMMENT 'Review creation date'


  ,PRIMARY KEY (ReviewID)
)
COMMENT = 'Book Review'
;


ALTER TABLE Review
  ADD CONSTRAINT Book_fk_Review
  FOREIGN KEY (BookID)
  REFERENCES Book (BookID)
;


ALTER TABLE Review
  ADD CONSTRAINT Review_Rating_CK
  CHECK (Rating BETWEEN 1 AND 5)
;

-- Script of Comment

CREATE TABLE Comment
(
  CommentID       INT            NOT NULL  AUTO_INCREMENT               COMMENT 'PK for Comment'
  ,ReviewID       INT            NOT NULL                               COMMENT 'Review ID'
  ,CommentText    VARCHAR(2500)  NOT NULL                               COMMENT 'Comment Text'
  ,DatePosted     DATETIME       NOT NULL                               COMMENT 'Comment creation date'


  ,PRIMARY KEY (CommentID)
)
COMMENT = 'Review Comment'
;


ALTER TABLE Comment
  ADD CONSTRAINT review_fk_comment
  FOREIGN KEY (ReviewID)
  REFERENCES Review (ReviewID)
;
