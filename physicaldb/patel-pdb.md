# Database Design - Assignment 4 - Database Initialization Scripts

> [!IMPORTANT]
> [Group Physical Model](https://github.com/Saucy-tgossett/WinSupply/blob/gossett-physicalmodel/physical-model/gossett-lmh.md)


## Common Physical Database Concepts

### Create Table Statement

A CREATE TABLE statement is used to create a table in a physical database. It includes: table name ,column names, data type, primary key,foreign keys, null or not values and other constraints like check or unique.

---

### Database Constraints

Database constraints are rules that control what data can be stored in a table.

Some common constraints are:

- PRIMARY KEY - uniquely identifies each row.
- FOREIGN KEY - connects a row to another table.
- NOT NULL - requires a value to be entered.
- UNIQUE - prevents duplicate values.
- CHECK - makes sure a value follows a specific rule.

Constraints are useful because they help keep the database data correct and consistent. They can prevent invalid data from being inserted into the database.

---

### Ways to Insert Data

Data can be inserted into a database using an INSERT statement.Data can be insert by one row or multiple rows.

---

### Database Roles

Database roles are used to control what users are allowed to do in a database. A role can be given permissions such as: SELECT, INSERT, UPDATE, DELETE, CREATE.

---
### Different Types of Users

- Database Administrator (DBA) : The DBA manages the database, users, permissions, security, backups, and database structure.

- Application User : An application user interacts with the database through the application. They normally do not directly manage the database.

- Developer : A developer creates and maintains the application and may need permission to create or modify database objects during development.

- Database Designer - A database designer plans the tables, relationships, attributes, keys, and constraints of the database.
