/**********************
	DELIVERABLE 1
***********************/

--Deliverable 1.7
SELECT e.emp_no, e.first_name, e.last_name, t.title, t.from_date, t.to_date
INTO retirement_titles
FROM employees e
INNER JOIN titles t
        ON (t.emp_no = e.emp_no)
WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
ORDER BY e.emp_no;

--Deliverable 1.15
SELECT DISTINCT ON (r.emp_no) r.emp_no, r.first_name, r.last_name, r.title
INTO unique_titles
FROM retirement_titles r
WHERE (r.to_date = '9999-01-01')
ORDER BY r.emp_no, r.to_date DESC;

--Deliverable 1.21
SELECT COUNT(u.emp_no) AS count, u.title 
INTO retiring_titles
FROM unique_titles u
GROUP BY u.title
ORDER BY count DESC


/**********************
	DELIVERABLE 2
***********************/

SELECT DISTINCT ON (e.emp_no) e.emp_no, e.first_name, e.last_name, e.birth_date, de.from_date, de.to_date, t.title
INTO mentorship_eligibilty
FROM employees e
INNER JOIN dept_emp de
        ON e.emp_no = de.emp_no 
INNER JOIN titles t
        ON t.emp_no = e.emp_no
WHERE (e.birth_date BETWEEN '1965-01-01' AND '1965-12-31')
AND (de.to_date = '9999-01-01')
ORDER BY emp_no, from_date DESC





