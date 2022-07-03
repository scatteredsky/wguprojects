--Creates detail report table for business question
DROP TABLE IF EXISTS movies_detailed_report;
CREATE TABLE IF NOT EXISTS detailed_report (
title VARCHAR(100),
runtime VARCHAR(10),
rentals INTEGER,
date DATE,
total_revenue DECIMAL(10)
)

