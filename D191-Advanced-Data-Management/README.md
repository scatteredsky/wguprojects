# D191 Advanced Data Management

COMPETENCIES
Writing Complex SQL Statement

Writes complex SQL statements in order to implement functions, stored procedures, and triggers to prepare data sets for data analysis and manipulation.

Configuring Extraction, Transformation, and Loading (ETL) Workflows

Configures data extraction, transformation, and loading tasks in order to automate data integration.

## INTRODUCTION

Data analysts frequently perform periodic extraction of data from a larger database. They then use this extracted data for analysis. A single data extract may serve different organizational needs such as populating an executive summary or providing a complete, detailed collection of data. This task will emulate such a process where you will create a repeatable data export, import, and analysis for various stakeholders.

In this task, the data will be extracted and analyzed within the same database to reduce the technical challenges of manipulating multiple databases.

This task defines a report as a collection of data that answers a real-world business question. The report contains two distinct sections that differ in the granularity of the data they present and how directly they support the answering of the business question of interest. The Detailed section will contain all data that informs the answers to the question, and the Summary section will include contains relevant aggregated data that provide the answer to the business question. For example, if the business question of interest in the context of a computer factory is focused on the number of the computers manufactured in the past six months, the detailed portion of a report could contain details on each individual computer made, while the summary portion contains only the total number of computers made in each factory.

Your business question must rely on the aggregation of data. In this task, the summary data will be automatically created from the detailed data.
