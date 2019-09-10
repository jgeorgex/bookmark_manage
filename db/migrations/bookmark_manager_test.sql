CREATE DATABASE bookmark_manager_test;
\c bookmark_manager_test;
CREATE TABLE bookmarks;
ALTER TABLE bookmarks ADD COLUMN title VARCHAR(60);