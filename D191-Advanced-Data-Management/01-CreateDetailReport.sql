--Rubric B
--Creates detailed report table for business question
DROP TABLE IF EXISTS movies_detailed_report;
CREATE TABLE IF NOT EXISTS movies_detailed_report (
title VARCHAR(100),
runtime VARCHAR(10),
times_rented INTEGER,
date DATE,
total_revenue NUMERIC(10)
);

--Creates summary report table for business question
DROP TABLE IF EXISTS movies_summary_report;
CREATE TABLE IF NOT EXISTS movies_summary_report (
title VARCHAR(100),
runtime VARCHAR(10),
times_rented INTEGER,
month_number INTEGER,
total_revenue NUMERIC (10)
);

--To view empty detailed report table
SELECT * FROM movies_detailed_report;

--To view empty movies_summary_report
SELECT * FROM movies_summary_report;

--Rubric C
--Inserts data into detailed report table
INSERT INTO movies_detailed_report (
    title,
    )
SELECT film.title, COUNT(rental.rental_id) AS times_rented, film.length AS runtime, now() AS date FROM rental
JOIN inventory ON rental.inventory_id = inventory.inventory_id
JOIN film ON inventory.film_id = film.film_id
GROUP BY film.title, film.length
ORDER BY times_rented desc;

--Checks if data was inserted into detailed report table
SELECT * from movies_detailed_report;

--Rubric D
--Performs data transformation on Date for readability



--Rubric E
--Inserts data into summary report table
