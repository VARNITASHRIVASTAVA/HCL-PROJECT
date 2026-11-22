# Problem Statement and KPI Definitions

## Project
Project 24: Social Media Engagement Analysis (Sports and Entertainment)

## Problem
Content creators and media teams want to know which kinds of videos, and which posting
days and hours, earn the most audience engagement. This project analyses YouTube trending
videos in the Sports and Entertainment categories to find how engagement rate is defined and
calculated, the best day and hour to post, and the most engaging content types.

## Dataset
Kaggle "Trending YouTube Video Statistics" (US videos): USvideos.csv and US_category_id.json.
Filtered to the Sports and Entertainment categories.

## Tools
Python (pandas) for cleaning, SQL for engagement-rate queries (run in SQLite, Oracle-syntax
scripts provided), Power BI for the dashboard.

## KPI definitions
| KPI | Definition |
|---|---|
| Engagement Rate (ER) | (likes + comments) / views x 100 |
| Average ER | Mean ER over valid videos |
| Median ER | Middle ER value over valid videos |
| Total Videos | Count of valid videos |
| Total Views | Sum of views over valid videos |
| Best posting day | Weekday with the highest average ER (IST) |
| Best posting hour | Hour with the highest average ER (IST, hours with at least 30 videos) |
| Viral outlier | Video with views above Q3 + 1.5 x IQR |

## Data rules
- Zero-view videos: flagged, ER left blank, excluded from averages.
- Deleted or removed videos: flagged and excluded from analysis.
- Viral outliers: flagged but kept, with a dashboard toggle.
- One row per video: the row with the highest views is kept.
