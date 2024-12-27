Unit 16.4 DDL & Schema Design
- Creating a Database
    - CREATE DATABASE database_name;
- Dropping a Database
    - DROP DATABASE database_name;
- Creating Tables:
    - CREATE TABLE books ( id SERIAL PRIMARY KEY, title TEXT, author TEXT, price FLOAT, page_count INTEGER, publisher TEXT, publication_date DATE );
- To look at tables in postgresql
    - \dt - will show a list of tables
    - \d+ books - will show books table
- Dropping Tables:
    - DROP TABLE users;

_________________________________________________________
- Column Data Types:
    - Integer - Integer numbers
    - Float - Floating-point numbers
    - Text - Text Strings
    - Varchar - Text strings that are limited to a certain size. VARCHAR(250) means the string can have a max of 250 characters in it
    - Boolean - True or False
    - Date - Date (without time)
    - Timestamp - Date and time
    - Serial - Auto-incrementing numbers (used for primary keys)
_________________________________________________________

- Null
    - Data you do not need to put
- Primary Keys
    - Must be Unique and Not Null
- Constraints
    - Forms of validation.
        - Primary Key, Unique, Not Null, Check, Foreign Key
- Column Manipulation
    - ADD, DROP, RENAME columns

__________________________________________________________
- Exercise
    - Part 1
        - Part 1 - Design schema for a medical center
        - Part 2 - Design schema for Craigslist
        - Part 3 - Design schema for Soccer league

    - Part 2 - Improve schemas
        - Schema 1
            - psql < outer_space.sql
        - Schema 2
            - psql < air_traffic.sql
        - Schema 3
            - psql < music.sql