use feranmidb;

-- How many Titles do we have 
SELECT count(title) as Titles
FROM parks_and_rec_episodes;

-- Average US Viewers
SELECT 	AVG(us_viewers) as AVG_us_viewers
FROM parks_and_rec_episodes;

-- Total Number of Views
select sum(us_viewers) 
from parks_and_rec_episodes;




-- Most Viewed Titles 
SELECT title, us_viewers
FROM parks_and_rec_episodes
group by title, us_viewers
order by us_viewers desc
limit 5
;

-- Average episode per season
SELECT season, avg(episode_num_in_season) as AVG_episode_per_season
FROM parks_and_rec_episodes
group by season
;

-- Who has written the most Titles?
SELECT written_by, count(title) as Titles
FROM parks_and_rec_episodes
group by written_by
order by count(title) desc
;

-- Who has directed the most titles
SELECT directed_by, count(title) as Titles
FROM parks_and_rec_episodes
group by directed_by
order by count(title) desc
;

-- Which writer has the highest Average title views
 SELECT written_by, avg(us_viewers) as AVG_us_viewers
FROM parks_and_rec_episodes
group by written_by
order by avg(us_viewers) desc
;

-- Oldest Titles
SELECT title, original_air_date
FROM parks_and_rec_episodes
group by title, original_air_date
order by original_air_date
;

-- Season wtih the Highest Average us Viewers
SELECT season, avg(us_viewers)
FROM parks_and_rec_episodes
group by Season
order by avg(us_viewers) desc
;

-- Most watched episode
SELECT title, episode_num_in_season, us_viewers
FROM parks_and_rec_episodes
group by title, episode_num_in_season, us_viewers
order by us_viewers desc
;

-- Which Title has the Highest Rating
SELECT title, max(imdb_rating) as Ratings
FROM parks_and_rec_imdb
group by title
order by max(imdb_rating) desc
;

-- Average Season Rating 
SELECT season, avg(imdb_rating)
 FROM parks_and_rec_imdb
group by season
order by avg(imdb_rating) desc
;
 
 select title
 FROM parks_and_rec_episodes
 where title = 'The Fight';
 
  select title, count(title) as Duplicates
 FROM parks_and_rec_episodes
group by title 
having count(title) > 1;

Select *
from parks_and_rec_episodes
where title in (
select title
from parks_and_rec_episodes
group by title
having count(*) > 1
);

SELECT ((total_votes*10)/imdb_rating) - 

FROM 
;

select title, imdb_rating, total_votes,
ceil((9.9 * total_votes - imdb_rating * total_votes) / (10 - 9.9)) as Votes_needed
from feranmidb.parks_and_rec_imdb
where imdb_rating < 9.9;

