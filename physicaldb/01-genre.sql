-- Script of Genre

CREATE TABLE Genre
(
  GenreID            SMALLINT     NOT NULL  AUTO_INCREMENT               COMMENT 'PK for Genre'
  ,GenreName         VARCHAR(50)  NOT NULL                               COMMENT 'Genre Name'


  ,PRIMARY KEY (GenreID)
)
COMMENT = 'Book Genre'
;

ALTER TABLE Genre
  ADD CONSTRAINT Genre_UK
  UNIQUE (GenreName)
;


INSERT INTO Genre (GenreName) VALUES ('Fantasy');
INSERT INTO Genre (GenreName) VALUES ('Mystery');
INSERT INTO Genre (GenreName) VALUES ('Science Fiction');
