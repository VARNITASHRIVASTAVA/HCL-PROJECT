-- Q1: Top 10 videos by engagement rate
SELECT video_id, title, views, likes, comment_count,
       ROUND((likes + comment_count) * 100.0 / views, 4) AS er
FROM v_valid_posts ORDER BY er DESC LIMIT 10;

-- Q2: Best posting day
SELECT * FROM v_er_by_day ORDER BY avg_er DESC;

-- Q3: Best posting hour (hours with at least 30 videos)
SELECT * FROM v_er_by_hour WHERE videos >= 30 ORDER BY avg_er DESC;

-- Q4: Content types ranked by engagement
SELECT * FROM v_er_by_type ORDER BY avg_er DESC;

-- Q5: Sports vs Entertainment
SELECT category, COUNT(*) AS videos, ROUND(AVG(engagement_rate), 3) AS avg_er
FROM v_valid_posts GROUP BY category;