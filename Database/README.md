# Database

## Overview

This folder contains the database models, initialization scripts, and SQL business queries for **Bookish**  our book recommendation application. These files document the database structure and provide the resources needed to set up and use our MariaDB database.

## Folder Layout

```
DATABASE/
├── Business_queries
│   └── bookishqueries.sql
├── Initialization
│   ├── bookish.sql
│   └── docker-compose.yml
├── Models
│   ├── Images
│   └── model.md
└── README.md
```

## Business Queries

The Business_queries folder contains SQL queries used to retrieve information from the database.

  - [bookishqueries.sql](Business_queries/bookishqueries.sql): Contains the SQL statements used to answer business questions.

These queries help support features such as searching for books, viewing reviews, finding recommendations, and displaying information on the application's dashboard.

## Initialization

The Initialization folder contains the files needed to create and run the database.

  - [bookish.sql](Initialization/bookish.sql): Creates the database tables and inserts sample data.
  - [docker-compose.yml](Initialization/docker-compose.yml): Configures the MariaDB Docker container.

## Models

The Models folder contains the three database models used to design our database.

  - [Conceptual Model](Models/images/conceptual.png): Shows the main entities and how they relate to each other.
  - [Logical Model](Models/images/logical.png)): Shows the entities, attributes, primary keys, foreign keys, and relationships.
  - [Physical Model](Models/images/physical.png)): Shows the database tables, data types, and constraints used in MariaDB.

> [!IMPORTANT]
> The [model.md](Models/model.md) file includes descriptions and images of each model.
