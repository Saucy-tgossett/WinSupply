-- Script of book

CREATE TABLE Book
(
  BookID             INTEGER      NOT NULL  AUTO_INCREMENT               COMMENT 'PK for Book'
  ,GenreID           SMALLINT     NOT NULL                               COMMENT 'FK for Genre'
  ,Title             VARCHAR(50)  NOT NULL                               COMMENT 'Book Name'
  ,PageCount         SMALLINT                                            COMMENT 'Number of Pages'



  ,PRIMARY KEY (BookID)
)
COMMENT = 'Book'
;

ALTER TABLE Book
  ADD CONSTRAINT book_fk_genre
  FOREIGN KEY (GenreID)
  REFERENCES Genre (GenreID)
;


