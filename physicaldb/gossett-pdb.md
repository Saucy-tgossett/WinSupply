# Database Design - Assignment 4 - Database Initialization Scripts

## Common Physical Database Concepts

**What Should be Included in a Create Table Statement:** A `CREATE TABLE` statement includes the table name and the columns that will be stored in the table. Each column should have a name and data type. The statement can also include things such as `primary keys`, `foreign keys`, whether a value can be `NULL`, default values, and other
constraints.

**Database Constraints are the Benefits of Them:** Database constraints are rules placed on data in a database to prevent invalid data from being entered.


**Ways to Insert Data:** Data can be added to a database using an `INSERT` statement. You can add one row at a time or add multiple rows in the same statement. Data can also be added through the application that's sending the data to the database.

**Database Roles and There Use:** Database roles control what users are allowed to do in the database. Roles can be given different permissions, such as `SELECT`, `INSERT`, `UPDATE`, and `DELETE`.

**Different Type of Users:** A `database administrator (DBA)` manages the database and its permissions. `Developers` may create or change parts of the database, while `regular users` have limited permissions and access the database through the application.


> [!IMPORTANT]
> [Group Physical Model](https://github.com/Saucy-tgossett/WinSupply/blob/gossett-physicalmodel/physical-model/gossett-lmh.md)


## Description

**Genre Table:** The `Genre table` is a lookup table that stores the different book genres. Each genre has its own `GenreID` as the primary key and a `GenreName` that must be unique.

**Book Table:** The `Book table` stores the information for each book, including the `title` and `page count`. Each book has its own `BookID` as the primary key and uses `GenreID` as a foreign key to connect the book to the Genre table.

## Reference's
  - [SQL Code Reference](https://github.com/pattonsgirl/CS4900-AppSoftwareDev/blob/main/U3-1_DevOps/DatabaseContainer/init_mr_fix_it.sql)

