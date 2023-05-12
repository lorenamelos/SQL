
#It calculates the total number of menu items that have been ordered more than 50 times for each price. #

SELECT price,
   COUNT(*) 
FROM menu
WHERE orders > 50
GROUP BY price;


