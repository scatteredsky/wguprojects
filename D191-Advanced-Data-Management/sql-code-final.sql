--Rubric B
--Creates detailed report table for business question "what are the top most profitable genre"
DROP TABLE IF EXISTS my_detailed_report;
CREATE TABLE IF NOT EXISTS my_detailed_report (
customer_id INTEGER,
first_name VARCHAR(100),
last_name VARCHAR(100),
total_rentals INTEGER,
total_revenue NUMERIC(10)
);

--Creates summary report table for business question
DROP TABLE IF EXISTS my_summary_report;
CREATE TABLE IF NOT EXISTS my_summary_report (
customer_name VARCHAR(100),
email VARCHAR(100),
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
--Performs data transformation on first_name & last_name columns to increase readability
CREATE FUNCTION merge_customer_name(client_id integer)
    RETURNS varchar(92)
    AS
$$
DECLARE
    customer_name varchar(92);
BEGIN
    SELECT CONCAT(first_name, ' ', last_name)
        INTO customer_name
        FROM customer
        WHERE customer_id = client_id;
    RETURN customer_name;
END;
$$
LANGUAGE plpgsql;


--Rubric E
--Trigger on the detailed report table



--Rubric F
--Creates a stored procedure