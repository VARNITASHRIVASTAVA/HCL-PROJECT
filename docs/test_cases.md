# Test Cases

| Case | How it is handled | Evidence |
|------|-------------------|----------|
| Zero views | Flagged is_zero_views; ER left blank to avoid dividing by zero; excluded from averages | test_cases.csv row TEST_ZERO has blank ER; 0 videos flagged |
| Deleted posts | Flagged is_deleted; excluded by the view v_valid_posts | 2 videos flagged |
| Viral outliers | Flagged is_outlier (views above Q3 + 1.5 x IQR); kept in data; dashboard has a toggle | 225 videos flagged, cutoff = N views |
| Normal video (control) | TEST_NORMAL: 1000 views, 50 likes, 10 comments, ER = 6.0 | test_cases.csv |
