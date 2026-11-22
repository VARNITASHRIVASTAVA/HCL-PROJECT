DROP TABLE IF EXISTS posts;

CREATE TABLE posts (
    video_id TEXT PRIMARY KEY,
    title TEXT,
    channel_title TEXT,
    category TEXT,
    content_type TEXT,
    publish_time TEXT,
    post_date TEXT,
    post_day TEXT,
    post_hour INTEGER,
    views INTEGER,
    likes INTEGER,
    comment_count INTEGER,
    engagement_rate REAL,
    is_deleted INTEGER,
    is_zero_views INTEGER,
    is_outlier INTEGER
);