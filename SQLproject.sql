/* ---------------------------SQL Mini project presentation--------------------------
Topic: Movie Analysis
Got the required datasets from Kaggle.
About to present as below.
1. Objective
2. Study done about the datasets.
3. About 10 quires to present. 
4. PPT Presentation
------------*/

-- 1. Objective
/* As my Data Analytics course is in progress, recently my upgradation was done till SQL 
where I'm using MySQL as database and I was assigned with SQL Project.
Topic: Movie Analysis   */

/*Poster_Link text 
Series_Title text 
Released_Year int 
Certificate text 
Runtime text 
Genre text 
IMDB_Rating double 
Overview text 
Meta_score int 
Director text 
Star1 text 
Star2 text 
Star3 text 
Star4 text 
No_of_Votes int 
Gross*/

create database SQL_Project;
show tables;
Alter table imdb_top_1000 rename to Project1;
select * from project1 ;

-- Quires
-- 1. Tops 5 Directors by Average Movie Rating
SELECT director, AVG(IMDB_Rating) AS average_rating
FROM project1
GROUP BY director
HAVING COUNT(*) > 5
ORDER BY average_rating DESC
LIMIT 5;

Select Avg(IMDB_Rating)
from project1;

-- 2. Movies with the Highest Rating and Gross collection Combination

SELECT Series_Title, IMDB_Rating, Gross
FROM project1
WHERE IMDB_Rating > 8.5 AND Gross > 100
ORDER BY IMDB_Rating DESC, Gross DESC
Limit 5;

-- 3. Top 5 Genres by Highest No. of Votes

SELECT Genre, No_of_Votes AS Highest_Votes
FROM project1
ORDER BY Highest_Votes DESC
LIMIT 5;

-- 4. Average Movie Ratings for last five years till 2020

SELECT Released_Year, AVG(IMDB_Rating) AS average_rating
FROM project1
GROUP BY Released_Year
ORDER BY Released_Year Desc
limit 5;

-- 5. Top 3 Directors with Consistent High Ratings

SELECT director, MIN(IMDB_Rating) AS min_rating
FROM project1
GROUP BY director
HAVING COUNT(*) >= 7
ORDER BY min_rating DESC
LIMIT 3;

-- 6. Finding Top Movies based on Meta Rating
select
row_number() over(order by IMDB_Rating Desc) As Rank_No, 
Series_Title,
Meta_score,
Director From project1
Limit 10;

-- 7. Top 10 Movies by Vote Count

SELECT Series_Title, No_of_Votes
FROM project1
ORDER BY No_of_Votes DESC
LIMIT 10;

-- 8. Presenting the NOTNULL values in Rating along with year, director, Title

SELECT Director, Series_Title, Released_Year, runtime, IMDB_Rating, Meta_score
FROM project1
WHERE IMDB_Rating IS NOT NULL AND Meta_score IS NOT NULL;






