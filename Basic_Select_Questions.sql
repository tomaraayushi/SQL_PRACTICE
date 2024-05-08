--LEETCODE INTERVIEW QUESTIONS SERIES
--BASIC SELECT 
--Q1 
SELECT 
    product_id
FROM Products
WHERE 
    low_fats = 'Y' AND recyclable = 'Y';
	

--Q2
SELECT
    name
FROM Customer
WHERE 
    referee_id != 2 OR referee_id IS NULL;

--Q3
SELECT
    name,
    population,
    area
FROM World
WHERE
    area >= 3000000 OR population >= 25000000;

--Q4
SELECT 
    DISTINCT author_id AS id
FROM Views
WHERE 
    author_id = viewer_id;
	
--Q5
SELECT
    tweet_id
FROM Tweets
WHERE
    LENGTH(content) > 15;























	
	
	
	
	
	
	
	
	
	
	