# Database Initialization Scripts

## What information should be included in create table statements

- Information that should be included in a create table is a table name, column name's, column data types, constraints, a primary key and a foreign key.

## Database Constraints

- Constraints are rules that we put in our SQL tables to ensure that our data has consistentcy within them
  - `NOT NULL` - A column cannot have a null value
  - `UNIQUE KEY` - to ensure that the values of a column are unique
  - `PRIMARY KEY` - This ensures that a column or a combination of columns is unique and not null.
  - `FOREIGN KEY` - This ensures that the values in a column match the values of another tables primary key.
  - `CHECK` - this constraint ensures that the values of a column meet a specific condition.
  - `DEFAULT` - This constraint ensures that the default value for a column if no value is given.

## Ways to insert data

- Data can be inserted using the `INSERT` statements, adding one row at a time or adding multipe rows within the same statment. 

## Database Roles 

- Roles in SQL really help to group the permissions to single object and then assingnign them to a user instead of you creating each user indiviudually. 

## Different Type of Users

- Native Users: Users who arent aware of the database system.
- Applicaition Programmers: They are responsible for developing application programs or user interfaces.
- Sophisticated Users: These users interact with the system witout writing the program. They mainly request in query language.
- Specialized Users: They write specialized database applications that do not fit into fractional database. 
- Online Users: They directly communicate with the database directly through online.

## Physical Model

(https://github.com/Saucy-tgossett/WinSupply/blob/gossett-physicalmodel/physical-model/gossett-lmh.md)[Group Physical Model]

## Description 

**Review Table**: The `Review` table is a table that stores the reviews users write about books, each review is linked to exactly one book through the 'BookID', and a single book can many reviews. 

**Comment Table**: The  `Comment` table is a table that stores the comments users create about reviews, each comment is linked to exactly one review through `ReviewID`, and a single review can have many comments. 