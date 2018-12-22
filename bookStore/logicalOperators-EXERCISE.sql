SELECT 10 != 10;

SELECT 15 > 14 && 99 - 5 <= 94;

SELECT 1 IN (5,3) || 9 BETWEEN 8 AND 10;

SELECT * FROM books WHERE released_year < 1980;

SELECT * FROM books WHERE author_lname IN ('eggers','chabon');

SELECT * FROM books WHERE author_lname='lahiri' AND released_year>=2000;

SELECT * FROM books WHERE pages BETWEEN 100 AND 200;

SELECT * FROM books WHERE author_lname LIKE 'C%' OR author_lname LIKE 'S%';

SELECT title, author_lname, 
    CASE 
        WHEN title LIKE '%stories%' THEN 'Short Stories' 
        WHEN title LIKE '%just kids%' OR title LIKE '%a heartbreaking work%' THEN 'Memoir' 
        ELSE 'Novel' 
    END AS TYPE 
FROM books;

SELECT author_fname, author_lname,
    CASE 
        WHEN COUNT(*) = 1 THEN '1 book'
        ELSE CONCAT(COUNT(*), ' books')
    END AS COUNT
FROM books 
GROUP BY author_lname, author_fname;