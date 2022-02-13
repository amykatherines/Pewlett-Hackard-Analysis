/*
1. Retrieve the emp_no, first_name, and last_name columns from the Employees table.
2. Retrieve the title, from_date, and to_date columns from the Titles table.
3. Create a new table using the INTO clause.
4. Join both tables on the primary key.
5. Filter the data on the birth_date column to retrieve the employees who were born between 1952 and 1955. Then, order by the employee number.
6. Export the Retirement Titles table from the previous step as retirement_titles.csv and save it to your Data folder in the Pewlett-Hackard-Analysis folder.
7. Before you export your table, confirm that it looks like this image
*/

SELECT DISTINCT ON (e.emp_no, e.first_name, e.last_name), t.title t.from_date, t.to_date
-- INTO 
ORDER BY t.to_date DESC

select * from titles