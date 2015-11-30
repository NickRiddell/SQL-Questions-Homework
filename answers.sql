-- ***************************Section 1******************************
-- Select the names of all users.
-- SELECT * FROM users;

-- Select the names of all shows that cost less than £15.
-- SELECT name FROM shows WHERE price < 15.00;

-- Insert a user with the name "Val Gibson" into the users table.
-- INSERT INTO "users" (name) VALUES ('Val Gibson');

-- Select the id of the user with your name.
-- SELECT id FROM users WHERE name = 'Nick Riddell';

-- Insert a record that Val Gibson wants to attend the show "Two girls, one cup of comedy".
-- INSERT INTO "shows_users" (show_id, user_id) VALUES (12, 23);

-- Updates the name of the "Val Gibson" user to be "Valerie Gibson".
-- UPDATE users SET name = 'Valerie Gibson' WHERE name = 'Val Gibson';
-- UPDATE users SET name = 'Nick Riddell' WHERE name = 'Nick Ridell';

-- Deletes the user with the name 'Valerie Gibson'.
-- DELETE FROM users WHERE name = 'Valerie Gibson';
-- Deletes the shows for the user you just deleted.
-- DELETE FROM shows_users WHERE show_id = 12 AND user_id = 23;

-- *********************Section 2*******************************

-- Select the names and prices of all shows, ordered by price in ascending order.
-- SELECT name, price FROM shows ORDER BY price;

-- Select the average price of all shows.
-- SELECT AVG(price) FROM shows;

-- Select the price of the least expensive show.
-- SELECT Min(price) FROM shows;

-- Select the sum of the price of all shows.
-- SELECT SUM(price) FROM shows;

-- Select the sum of the price of all shows whose prices is less than £20.
-- SELECT SUM(price) FROM shows WHERE price < 20.00;

-- Select the name and price of the most expensive show.
-- SELECT name, price FROM shows WHERE price = (SELECT MAX(price) FROM shows);

-- Select the name and price of the second from cheapest show.
-- SELECT MIN(price) FROM shows WHERE price > (SELECT MIN(price) FROM shows);

-- Select the names of all users whose names start with the letter "N".
-- SELECT * FROM users WHERE name LIKE 'N%';

-- Select the names of users whose names contain "mi".
-- SELECT * FROM users WHERE name LIKE '%mi%';
-- *************************Section 3******************************

-- The following questions can be answered by using nested SQL statements but ideally you should learn about JOIN clauses to answer them.

-- Select the time for the Edinburgh Royal Tattoo.
SELECT time from times INNER JOIN shows ON show_id = shows.id WHERE name = 'Edinburgh Royal Tattoo';
-- Select the number of users who want to see "Shitfaced Shakespeare".
SELECT name from victims INNER JOIN bitings ON victims.id = bitings.victim_id WHERE bitings.zombie_id = 1;
-- Select all of the user names and the count of shows they're going to see.
SELECT name, COUNT(shows_users.show_id) FROM users INNER JOIN shows_users ON shows_users.user_id = users.id GROUP BY users.id;
-- SELECT all users who are going to a show at 17:15.

