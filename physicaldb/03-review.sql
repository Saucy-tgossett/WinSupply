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
