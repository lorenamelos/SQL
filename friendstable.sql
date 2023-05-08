/* This is a exercise from CodeAcademy carreer path.
Here it was asked the creation of a table with friend's name, and birthday and the manipulation of this data, 
like adding, deleting and updating the table. */ 


CREATE TABLE friends (
  id INTEGER,
  name TEXT,
  birthday DATE
);

INSERT INTO friends (id, name, birthday) VALUES (1, 'Ororo Munroe','1940-05-30');

INSERT INTO friends (id, name, birthday) VALUES (2, 'Elena Gilbert','1988-08-25');

INSERT INTO friends (id, name, birthday) VALUES (3, 'Damon Salvatore','1942-04-10');

UPDATE friends
SET name = 'Storm'
WHERE id = 1;

ALTER TABLE friends
ADD COLUMN email TEXT;

UPDATE friends
SET email = 'storm@codecademy.com'
WHERE id = 1;

UPDATE friends
SET email = 'elena@codecademy.com'
WHERE id = 2;

UPDATE friends
SET email = 'damon@codecademy.com'
WHERE id = 3;

DELETE FROM friends
WHERE id = 1;

SELECT *
FROM friends;
