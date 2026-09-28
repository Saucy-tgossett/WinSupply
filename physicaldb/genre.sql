CREATE TABLE Genre
(
   GenreID    SMALLINT     NOT NULL  AUTO_INCREMENT  COMMENT 'PK for Genre'
  ,GenreName  VARCHAR(50)  NOT NULL                  COMMENT 'Genre Name'

  ,PRIMARY KEY (GenreID)
)
COMMENT = 'Genre Lookup'
;

-- Makes sure GenreName is unique
ALTER TABLE Genre
  ADD CONSTRAINT Genre_Name_Uk01
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
