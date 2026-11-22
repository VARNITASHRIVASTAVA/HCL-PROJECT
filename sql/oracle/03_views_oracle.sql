CREATE OR REPLACE VIEW v_valid_posts AS
SELECT * FROM posts WHERE views > 0 AND is_deleted = 0;

CREATE OR REPLACE VIEW v_er_by_day AS
SELECT post_day, COUNT(*) AS videos, ROUND(AVG(engagement_rate), 3) AS avg_er
FROM v_valid_posts GROUP BY post_day;

CREATE OR REPLACE VIEW v_er_by_hour AS
SELECT post_hour, COUNT(*) AS videos, ROUND(AVG(engagement_rate), 3) AS avg_er
FROM v_valid_posts GROUP BY post_hour;

CREATE OR REPLACE VIEW v_er_by_type AS
SELECT content_type, COUNT(*) AS videos, ROUND(AVG(engagement_rate), 3) AS avg_er
FROM v_valid_posts GROUP BY content_type;