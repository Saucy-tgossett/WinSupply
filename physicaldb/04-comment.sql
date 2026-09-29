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
