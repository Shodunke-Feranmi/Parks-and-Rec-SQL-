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

 
## 🛠️ Tools & Technologies
 
- **MySQL Workbench**
  - Aggregation (`COUNT`, `AVG`, `SUM`, `MAX`)
  - Grouping and ranking with `ORDER BY` and `LIMIT`
  - Subqueries for duplicate detection (`HAVING COUNT(*) > 1`)
  - Custom formula for "votes needed" to move an IMDb rating
## 📈 Key Findings
 
- **125 episodes**, averaging **3.86M US viewers** each, for **482.3M total views** across the series.
- The **Pilot is the most-watched episode** (6.77M viewers), followed by Season 3's **"Go Big or Go Home"** (6.14M) and **"Canvassing"** (5.92M).
- **Season 1 draws the highest average viewership** (5.35M per episode), even though it's the shortest season at just 6 episodes; viewership generally trends downward in later seasons, bottoming out in **Season 6** (2.94M).
- **Michael Schur** has the most writing credits (12 episodes), while **Dean Holland** directed by far the most episodes (27).
- **Rachel Axler** has the highest average viewership among writers with multiple episodes (about 4.94M across 3 episodes).
- **Season 7** has the two highest-rated episodes on IMDb: **"One Last Ride"** and **"Leslie and Ron"**, both at 9.6, and the series finale two-parter drives Season 7 to the second-highest average season rating (8.41).
- **Season 3 has the highest average IMDb rating** (8.51) despite not having the highest average viewership, while **Season 1 has the lowest average rating** (7.23) despite the highest average viewership, an inverse relationship.


 ##  Business Insights
1. **Live viewership and lasting critical reception move in opposite directions here.** Season 1 pulled the biggest audiences but has the lowest IMDb rating, while Season 3 and the Season 7 finale rate highest but never matched Season 1's viewership. Across all matched episodes, US viewers and IMDb rating actually correlate slightly negatively (-0.16), so chasing live ratings and chasing critical acclaim are not the same strategy for a show like this.
2. **The show lost viewers steadily as it aged**, dropping from 5.35M average viewers in Season 1 to a low of 2.94M in Season 6, typical of network sitcom decline, but the writing and story quality (via IMDb rating) held up or improved in the same stretch. This is a useful case for arguing that renewal decisions shouldn't rely on live viewership alone.
3. **A small group of contributors carried a large share of the show.** Michael Schur (writing) and Dean Holland (directing) each touched a disproportionate number of episodes, which is common for a showrunner and a lead director, but worth noting as a concentration risk if either had left the show.

## 📚 Skills Demonstrated
 
- Aggregate analysis across two related tables
- Ranking and top-N queries
- Duplicate detection with `GROUP BY` / `HAVING`
- Writing a custom formula to answer a "what would it take" business question
## 👤 Author
 
**Shodunke Feranmi**
[LinkedIn](https://linkedin.com/in/your-profile) · [GitHub](https://github.com/Shodunke-Feranmi)
