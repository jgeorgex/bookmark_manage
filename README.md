## README

Clone the repository and then run:
bundle

## To set up database

1. Connect to psql
2. Create the database using the psql command CREATE DATABASE bookmark_manager;
3. Connect to the database using the pqsl command \c bookmark_manager;
4. Run the query we have saved in the file 01_create_bookmarks_table.sql

To set up the appropriate tables, connect to the database in `psql` and run the SQL scripts in the `db/migrations` folder in the given order.

## To run bookmark Manager

```
rackup -p 3000
```

## To view bookmarks, navigate to

`localhost:3000/bookmarks`
