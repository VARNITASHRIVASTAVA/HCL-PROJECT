# Social Media Engagement Analysis (Project 24)

Analysis of YouTube trending videos in Sports and Entertainment to find which content types,
days and hours get the highest engagement.

## Summary of results
- Valid videos analysed: 2,071
- Average ER: 2.607% | Median ER: 1.956%
- Best day: Saturday | Best hour: 1:00 IST
- Top content type: Behind the Scenes / Vlog

## Dataset
Kaggle: Trending YouTube Video Statistics (USvideos.csv, US_category_id.json).

## Tools
Python (pandas), SQLite (run in VS Code), Oracle-syntax SQL scripts, Power BI Desktop, Git/GitHub.

## Engagement rate formula
ER = (likes + comments) / views x 100

## Folder structure
- data/raw/ : original files
- data/clean/ : cleaned CSV, SQLite database, SQL result CSVs
- notebooks/ : 01_cleaning, 02_sql, 03_verification, 04_docs
- sql/ : SQLite scripts (ddl, load, views, queries)
- sql/oracle/ : Oracle-syntax versions of the same scripts
- powerbi/ : engagement_dashboard.pbix
- docs/ : problem statement, data quality report, insights, tests, diagram

## How to run
1. Run notebooks/01_cleaning.ipynb to create data/clean/posts_clean.csv.
2. Run notebooks/02_sql.ipynb to create the database, views and query results.
3. Run notebooks/03_verification.ipynb to verify 10 videos.
4. Open powerbi/engagement_dashboard.pbix in Power BI Desktop.

## Note on Oracle
Oracle XE installation failed on my machine, so the queries were executed in SQLite using
standard SQL. Oracle-syntax scripts (DDL, load, views, queries) are provided in sql/oracle/.

## Demo video
(paste your YouTube link here)

## Author
Varnita Shrivastava, B.Tech CSE (Data Science), ABES Engineering College
