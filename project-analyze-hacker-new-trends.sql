Hacker News is a popular website run by Y Combinator. It’s widely known by people in the tech industry as a community site for sharing news, showing off projects, asking questions, among other things.

In this project, you will be working with a table named hacker_news that contains stories from Hacker News since its launch in 2007. It has the following columns:

title: the title of the story
user: the user who submitted the story
score: the score of the story
timestamp: the time of the story
url: the link of the story
This data was kindly made publicly available under the MIT license.

Let’s get started!


-------------------------------------------------------


SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

----------------------------------------------------

SELECT timestamp,
   strftime('%H', timestamp)
FROM hacker_news
GROUP BY 1
LIMIT 20;

-- This returns the hour, HH, of the timestamp column!

-- For strftime(__, timestamp):

-- %Y returns the year (YYYY)
-- %m returns the month (01-12)
-- %d returns the day of the month (1-31)
-- %H returns 24-hour clock (00-23)
-- %M returns the minute (00-59)
-- %S returns the seconds (00-59)
-- if timestamp format is YYYY-MM-DD HH:MM:SS.

--------------------------------------------------------


-- Let’s write a query that returns three columns:

-- The hours of the timestamp
-- The average score for each hour
-- The count of stories for each hour



SELECT strftime('%H', timestamp), 
    AVG(score),
    COUNT (*)
FROM hacker_news
GROUP BY 1
ORDER BY 2 DESC;

--------------------------------------------------

-- What's the best time to post a story?
 
SELECT strftime('%H', timestamp) AS 'Hour', 
   ROUND(AVG(score), 1) AS 'Average Score', 
   COUNT(*) AS 'Number of Stories'
FROM hacker_news
WHERE timestamp IS NOT NULL
GROUP BY 1
ORDER BY 2 DESC;

-- The best hours are in the morning around 7 am and afternoon around 6 - 8 pm.


---------------------------------------------------
