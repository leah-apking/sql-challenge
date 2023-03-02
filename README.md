# sql-challenge

### Module 9 SQL Challenge

We were provided with six CSV files containing an employee database from the 1980s and 1990s. Each of these tables was linked to at least one other through several primary keys, including employee numbers, department numbers, and title IDs.

#### Data Modeling
The data modeling portion of this assignment was creating an entity relationship diagram of the files provided. This required determining what columns and identification values were common across multiple tables and which columns contained information found on only one table. The employee number was unique and served as a primary key for the employee table and connected to the employee department table, manager table, and salary table. However, the employee department table had repeated employee numbers while the manager table contained only a few. The department numbers served as a primary key linking the departments table to the manager and department employee tables. The title table was linked only to the employee table by the title ID. Neither of the two columns on the employee department table required contained unique information, so a composite key was required to identify the unique combination of the two values.

#### Data Engineering
Using the information from the ERB we then created a table schema for the csv files and specified the keys and data types to correspond with the data found in the six tables provided. After creating and running the schema we were able to import the original CSV files into our database and complete the data engineering section.

#### Data Analysis
For this section we were able to pull information from our database to answer a variety of questions and execute queries to retrieve relevant data. This required a variety of aggregate functions; for this assignment I ended up with a lot of joins to allow information on one table to be combined with another. I also used several subqueries, where clauses, order by functions, and wildcards to complete this analysis.
