# Data Quality Report

## Row counts
| Stage | Rows |
|---|---|
| Raw file (USvideos.csv) | 40,949 |
| Unique videos in raw file | 6,351 |
| Rows in Sports and Entertainment (before removing repeats) | 12,138 |
| Rows after cleaning (one row per video) | 2,073 |

The raw file lists the same video on many trending days, so repeated rows were removed and
the row with the highest views was kept for each video.

## Issues found and how they were handled
| Issue | Count | Handling |
|---|---|---|
| Deleted or removed videos | 2 | Flagged (is_deleted), excluded from analysis |
| Zero-view videos | 0 | Flagged (is_zero_views), ER left blank, excluded from averages |
| Viral outliers | 225 | Flagged (is_outlier), kept; cutoff = 3,270,855 views (Q3 + 1.5 x IQR) |
| Valid videos used for ER | 2,071 | |

Non-numeric views, likes and comments were converted to numbers, with blanks set to 0.

## Derived fields
- engagement_rate = (likes + comment_count) / views x 100
- post_day and post_hour from publish_time converted from UTC to IST (Asia/Kolkata)
- category from US_category_id.json
- content_type assigned by keyword rules on title and channel name

## Known limitation
40.9% of videos did not match any content-type keyword rule and are labelled "Other".

## Verification
Engagement rate was verified for 10 random videos against the raw file and by hand
(see verification.md). Edge cases are in test_cases.md.
