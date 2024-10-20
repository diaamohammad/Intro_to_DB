use alx_book_store;

-- This SQL script retrieves the full description of the 'books' table in the 'alx_book_store' database.
SELECT COLUMN_NAME, COLUMN_TYPE
FROM INFORMATION_SCHEMA.COLUMNS
WHERE TABLE_SCHEMA = 'alx_book_store' 
AND TABLE_NAME = 'books';



 
