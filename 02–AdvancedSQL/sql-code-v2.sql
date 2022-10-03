-- RUBRIC B
-- 3 Steps
-- Step 1
-- Creates detailed report table for business question
-- ""


-- Step 2
-- Creates summary report table for business question



-- Step 3 (view empty tables)
-- To view empty detailed report table
SELECT * FROM my_detailed_report;
-- To view empty my_summary_report
SELECT * FROM my_summary_report;

-- RUBRIC C
-- X Steps
-- Extracts data and populates detailed report table

-- Step 2
-- Checks if data was inserted into detailed report table


-- Step 3
-- Inserts data into summary report table


-- Step 4
-- Checks if data was inserted into summary table
SELECT * FROM my_summary_report;

-- To verify data's accuracy we will compare xyz from the
--  table in the original dataset with xyz from the detailed table.
SELECT XYZ FROM zxy;
SELECT XYZ FROM zxy;


-- Next Rubric
-- RUBRIC D
-- Data transformation will be performed by doing XYZ



-- Next Rubric
-- RUBRIC E
-- Create Trigger on the detailed report table to refresh summary table


-- Next Rubric
-- RUBRIC F
-- Creates a stored procedure that can be used to refresh both tables
-- This procedure should be run once every quarter



-- Call Stored Procedure



