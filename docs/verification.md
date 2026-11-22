# Verification of Engagement Rate (10 videos)

Method: 10 random videos (seed 7) were taken from the SQL view v_valid_posts.
For each, likes, comments, and views were read from the original USvideos.csv
and ER = (likes + comments) / views * 100 was calculated manually.


    | video_id  | views |likes|comments| Manual ER | SQL ER | Match |
    |-----------|-------|-----|--------|-----------|--------|-------|
0	|uTH--XRCGxM|127404 |3869 |111     |3.1239     |3.1239  |Yes    |	
1	|4CGBSGEkbKA|1144298|6809 |2350    |0.8004     |0.8004  |Yes    |		
2	|dRpNZV18N_g|324024 |10288|1586    |3.6645     |3.6645  |Yes    |	
3	|QRq0pkr2TWM|627933 |28580|444     |4.6221     |4.6221  |Yes    |		
4	|ZEWi-0Q_bpg|107113 |965  |575     |1.4377     |1.4377  |Yes    |		
5	|j5cSKF5FzD0|41159  |658  |169     |2.0093     |2.0093  |Yes    |		
6	|qmYcbgJBv7s|100812 |791  |66      |0.8501     |0.8501  |Yes    |		
7	|2X5fG1A4kuc|172027 |1548 |294     |1.0708     |1.0708  |Yes    |	
8	|lyavSkF30Rs|57465  |456  |176     |1.0998     |1.0998  |Yes    |		
9	|kOsl3cmK3zg|453506 |14494|916     |3.3980     |3.3980  |Yes    |		
Result: 10 of 10 matched (rounded to 4 decimals).