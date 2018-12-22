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

-- Challenge 3: Find the users who have never posted a photo
SELECT 
    username
FROM users
LEFT JOIN photos
    ON users.id = photos.user_id
WHERE photos.id IS NULL;

-- Challenge 4: Most likes on a photo
SELECT 
    username,
    photos.id,
    photos.image_url, 
    COUNT(*) AS total
FROM photos
INNER JOIN likes
    ON likes.photo_id = photos.id
INNER JOIN users
    ON photos.user_id = users.id
GROUP BY photos.id
ORDER BY total DESC
LIMIT 1;

-- Challenge 5: 