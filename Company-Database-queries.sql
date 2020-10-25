--Find all employees
SELECT * FROM employee;

--find all clients
SELECT * 
FROM client;

--find all employees ordered by salary
SELECT *
FROM employee
ORDER BY salary;

--find all employee ordered by sex then name
SELECT *
FROM employee
ORDER BY sex, first_name, last_name;

--first 5 employees
SELECT *
FROM employee
LIMIT 5;

--first and last name
SELECT first_name, last_name
FROM employee;

-- Find the forename and surnames names of all employees
SELECT first_name AS forename, employee.last_name AS surname
FROM employee;

--find all different genders
SELECT DISTINCT sex
FROM employee;


--functions
--find number of employee
SELECT COUNT(emp_id)
FROM employee;

--all the female employee born after 1970
SELECT COUNT(emp_id)
FROM employee
WHERE sex="F" AND birth_day>= "1970-01-01";

--average of employee salary
SELECT AVG(salary)
FROM employee;

-- Find the sum of all employee's salaries
SELECT SUM(salary)
FROM employee;

-- Find out how many males and females there are
SELECT COUNT(sex), sex
FROM employee
GROUP BY sex;


-- Find the total sales of each salesman
SELECT SUM(total_sales), emp_id
FROM works_with
GROUP BY emp_id;