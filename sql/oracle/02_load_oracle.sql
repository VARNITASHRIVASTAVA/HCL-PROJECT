-- Load data/clean/posts_clean.csv into the posts table.
-- In Oracle SQL Developer: right-click the POSTS table > Import Data >
-- choose posts_clean.csv > map columns by name > map TRUE/FALSE to 1/0 > Finish.
-- Check the load:
SELECT COUNT(*) AS rows_loaded FROM posts;
