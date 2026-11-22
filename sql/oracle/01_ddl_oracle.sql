CREATE TABLE posts (
    video_id        VARCHAR2(20) PRIMARY KEY,
    title           VARCHAR2(500),
    channel_title   VARCHAR2(200),
    category        VARCHAR2(50),
    content_type    VARCHAR2(50),
    publish_time    TIMESTAMP WITH TIME ZONE,
    post_date       DATE,
    post_day        VARCHAR2(15),
    post_hour       NUMBER(2),
    views           NUMBER,
    likes           NUMBER,
    comment_count   NUMBER,
    engagement_rate NUMBER(12,4),
    is_deleted      NUMBER(1),
    is_zero_views   NUMBER(1),
    is_outlier      NUMBER(1)
);