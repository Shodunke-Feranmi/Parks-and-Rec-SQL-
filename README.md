# Parks and Recreation: Episode & Ratings Analysis (SQL)
 
A MySQL analysis of *Parks and Recreation* episode data, covering viewership, writers and directors, seasons, and IMDb ratings.
 
---
 
## 📌 Project Overview
 
This project analyzes two linked tables of show data: episode-level viewership and production credits, and IMDb ratings by title. Together they answer what made an episode or season perform well, both in real-time viewers and in lasting audience rating.
 
| Table | Grain |
|---|---|
| `parks_and_rec_episodes` | One row per episode (season, episode number, writer, director, air date, US viewers) |
| `parks_and_rec_imdb` | One row per title (IMDb rating, total votes) |
 
## 🎯 Business Problem
 
A studio or streaming platform wants to understand which seasons, writers, and directors consistently drove viewership, and how audience reception (IMDb rating) compares to live viewership, to inform decisions about talent, scheduling, or promotion for similar shows.
 
## 📊 Project Objectives
 
- Measure total and average viewership across all episodes
- Identify the most-viewed titles, episodes, and seasons
- Compare writers and directors by episode count and average viewership
- Analyze IMDb ratings by title and by season
- Check for duplicate title entries and estimate the votes needed to shift a rating
## 🗂️ Project Structure
 
```
└── parksandrec.sql   → All analysis queries
```
 
## 🛠️ Tools & Technologies
 
- **MySQL Workbench**
  - Aggregation (`COUNT`, `AVG`, `SUM`, `MAX`)
  - Grouping and ranking with `ORDER BY` and `LIMIT`
  - Subqueries for duplicate detection (`HAVING COUNT(*) > 1`)
  - Custom formula for "votes needed" to move an IMDb rating
## 📈 Key Findings
 
*This script has no attached data, so these are placeholders to fill in once run against the real tables.*
 
- Total titles: `[ ]` | Average US viewers: `[ ]` | Total views: `[ ]`
- Top 5 most-viewed titles: `[ ]`
- Writer with the most episode credits: `[ ]` | Director with the most: `[ ]`
- Writer with the highest average viewership: `[ ]`
- Season with the highest average viewership: `[ ]`
- Highest-rated title on IMDb: `[ ]` | Season with the highest average rating: `[ ]`
- Duplicate title entries found: `[ ]`
## 💡 Business Insights
 
*Once the queries are run, summarize 2 to 4 conclusions, for example:*
 
1. `[ ]` (e.g., whether a particular writer or director correlates with higher viewership)
2. `[ ]` (e.g., how live viewership trends compare to lasting IMDb reception)
3. `[ ]` (e.g., a seasonal pattern in ratings or viewership)
## ⚠️ Note on the Script
 
Two queries need attention before this runs cleanly:
- The votes-needed query near the top (`SELECT ((total_votes*10)/imdb_rating) - FROM ;`) is incomplete and will throw a syntax error. A working version already exists further down the script (`ceil((9.9 * total_votes - imdb_rating * total_votes) / (10 - 9.9))`), so the broken one can likely be removed.
- A few queries (`GROUP BY title, us_viewers`, `GROUP BY title, episode_num_in_season, us_viewers`) group by columns that make each row already unique, so they behave like a plain `SELECT ... ORDER BY` — worth double-checking they return what's intended.
## 📚 Skills Demonstrated
 
- Aggregate analysis across two related tables
- Ranking and top-N queries
- Duplicate detection with `GROUP BY` / `HAVING`
- Writing a custom formula to answer a "what would it take" business question
## 👤 Author
 
**Shodunke Feranmi**
[LinkedIn](https://linkedin.com/in/your-profile) · [GitHub](https://github.com/your-username)
