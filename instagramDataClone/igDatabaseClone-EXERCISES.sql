-- Challenge 1: Find the 5 oldest users.
SELECT * FROM users 
ORDER BY created_at 
LIMIT 5;

-- Challenge 2: What day of the week do most users register on?
SELECT 
    DAYNAME(created_at) AS day,
    COUNT(*) AS total
FROM users
GROUP BY day
ORDER BY total DESC
LIMIT 3;

-- Challenge 3: 