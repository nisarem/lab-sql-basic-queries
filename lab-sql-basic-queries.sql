#Display all available tables in the Sakila database.
USE sakila;
SHOW tables;

#Retrieve all the data from the tables actor, film and customer
SELECT * FROM actor;
SELECT * FROM film;
SELECT * FROM customer;

#Retrieve the following columns from their respective tables:
#3.1 Titles of all films from the film table
SELECT title FROM film;
#3.2 List of languages used in films, with the column aliased as language from the language table
SELECT * FROM language LIMIT 2;
SELECT name AS language FROM language;
#3.3 List of first names of all employees from the staff table
SELECT first_name FROM staff;
#Retrieve unique release years.
SELECT DISTINCT release_year FROM film;
#Counting records for database insights:
#5.1 Determine the number of stores that the company has.
SELECT COUNT(distinct store_id) FROM store;
#5.2 Determine the number of employees that the company has.
SELECT COUNT(distinct staff_id) FROM staff;
#5.3 Determine how many films are available for rent and how many have been rented.
SELECT * FROM inventory;
SELECT COUNT(distinct film_id) FROM inventory; #available films in the inventory
SELECT COUNT(*) FROM film; #all the films
SELECT * FROM rental;
SELECT COUNT(DISTINCT inventory_id) FROM rental; #total of how many times a film was rented
SELECT COUNT(inventory_id) AS on_rent FROM RENTAL WHERE return_date IS NULL; #nb of films currently rented
#5.4 Determine the number of distinct last names of the actors in the database.
#Retrieve the 10 longest films.
SELECT length FROM film ORDER BY length DESC LIMIT 10;
#Use filtering techniques in order to:
#7.1 Retrieve all actors with the first name "SCARLETT".
SELECT * FROM actor WHERE first_name = 'SCARLETT';
#7.2 Retrieve all movies that have ARMAGEDDON in their title and have a duration longer than 100 minutes.
#Hint: use LIKE operator.
SELECT * FROM film;
SELECT * FROM film WHERE title LIKE 'ARMAGEDDON%';
SELECT * FROM film WHERE title LIKE 'ARMAGEDDON%' AND length > 100;
#7.3 Determine the number of films that include Behind the Scenes content
SELECT * FROM film WHERE FIND_IN_SET('Behind the Scenes', special_features) > 0;