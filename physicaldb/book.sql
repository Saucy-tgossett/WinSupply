CREATE TABLE Book
(
   BookID     INTEGER(11)  NOT NULL  AUTO_INCREMENT  COMMENT 'PK for Book'
  ,GenreID    SMALLINT     NOT NULL                  COMMENT 'FK to Genre'
  ,Title      VARCHAR(50)  NOT NULL                  COMMENT 'Book Title'
  ,PageCount  SMALLINT                               COMMENT 'Page Count'

  ,PRIMARY KEY (BookID)
)
COMMENT = 'Book'
;

-- Connects book to genre
ALTER TABLE Book
  ADD CONSTRAINT Book_2_Genre_Fk01
  FOREIGN KEY (GenreID)
  REFERENCES Genre (GenreID)
  ON DELETE RESTRICT
  ON UPDATE RESTRICT
;