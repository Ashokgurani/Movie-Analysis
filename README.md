Movie Analysis SQL Project
Project Overview
This project involves analyzing a dataset of movies to derive various insights using SQL. The dataset, sourced from Kaggle, includes information about the top 1000 movies such as titles, release years, genres, ratings, and gross collections.

Dataset Description
The dataset consists of fields like Poster_Link, Series_Title, Released_Year, Certificate, Runtime, Genre, IMDB_Rating, Overview, Meta_score, Director, Star1, Star2, Star3, Star4, No_of_Votes, and Gross.

SQL Commands Used
Create Database:

create database SQL_Project;
Show Tables:

sql
show tables;
Rename Table:

sql
ALTER TABLE imdb_top_1000 RENAME TO Project1;
Select All Records:

sql
SELECT * FROM project1;
Group By and Aggregate Functions:

sql
SELECT director, AVG(IMDB_Rating) AS average_rating
FROM project1
GROUP BY director
HAVING COUNT(*) > 5
ORDER BY average_rating DESC
LIMIT 5;
Filtering and Sorting Records:

sql
SELECT Series_Title, IMDB_Rating, Gross
FROM project1
WHERE IMDB_Rating > 8.5 AND Gross > 100
ORDER BY IMDB_Rating DESC, Gross DESC
LIMIT 5;
Order By Clause:

sql
SELECT Genre, No_of_Votes AS Highest_Votes
FROM project1
ORDER BY Highest_Votes DESC
LIMIT 5;
Calculating Averages:

sql
SELECT Released_Year, AVG(IMDB_Rating) AS average_rating
FROM project1
GROUP BY Released_Year
ORDER BY Released_Year DESC
LIMIT 5;
Rank Movies:

sql
SELECT row_number() OVER (ORDER BY IMDB_Rating DESC) AS Rank_No, Series_Title, Meta_score, Director
FROM project1
LIMIT 10;

Conclusion
This project demonstrates the use of SQL commands such as CREATE DATABASE, SHOW TABLES, ALTER TABLE, SELECT, GROUP BY, HAVING, ORDER BY, and window functions for data analysis in the context of movie data.
