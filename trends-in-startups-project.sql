# 1.  Calculate the total number of companies in the table #

SELECT COUNT(*) FROM startups;

# 2. Total value of all companies in this table. Calculate this by getting the SUM() of the valuation column. #

SELECT SUM (valuation) FROM startups;

# 3. Maximum raised by the startups: #

SELECT MAX (raised) FROM startups;

# 4. Maximum amount of money raised, during ‘Seed’ stage:#

SELECT MAX (raised) FROM startups WHERE stage = 'Seed';

# 5. In what year was the oldest company on the list founded?#

SELECT MIN (founded) FROM startups;

#6. Valuation average:#

SELECT AVG(valuation) FROM startups;

# 7. Return the average valuation, in each category.#

SELECT category, AVG(valuation) 
FROM startups 
GROUP BY category;

# 8. Return the average valuation, in each category. Round the averages to two decimal places. #

SELECT category, ROUND (AVG(valuation) , 2)
FROM startups 
GROUP BY category;


# 9. Return the average valuation, in each category.Round the averages to two decimal places.
#Lastly, order the list from highest averages to lowest.#

SELECT category, ROUND (AVG(valuation) , 2)
FROM startups 
GROUP BY 1
ORDER BY 2 DESC;

# 10. Return the name of each category with the total number of companies that belong to it: #

SELECT category, COUNT(*)
FROM startups
GROUP BY category;


# 11. Next, filter the result to only include categories that have more than three companies in them. #
# What are the most competitive markets? #

SELECT category, COUNT(*)
FROM startups
GROUP BY category
HAVING COUNT(*) > 3
ORDER BY 2 DESC;

''' Most competitive markets are Education, Mobile and Social 
category	COUNT(*)
Education	5
Mobile	10
Social	12'''


# 12. What is the average size of a startup in each location? #
HAVING AVG(employees) > 500;

# 13.What is the average size of a startup in each location, with average sizes above 500? # 

SELECT location, AVG(employees)
FROM startups
GROUP BY location
HAVING AVG(employees) >500;





