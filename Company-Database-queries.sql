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

--wildcards(way of defining certain pattern)
-- % any number of characters, _ one charcter
-- find any client who are an LLC
SELECT *
FROM client
WHERE client_name LIKE '%LLC';

--branch suppliers who are in label business
SELECT * FROM branch_supplier;

SELECT *
FROM branch_supplier
WHERE supplier_name LIKE "% Label%";

--any employee born in october
SELECT *
FROM employee
WHERE birth_day LIKE "%10%";

--Union 
--list of employee and branch names
SELECT first_name
FROM employee
UNION
SELECT branch_name
FROM branch;


--joins(combines tow row based on related table)

-- Add the extra branch
INSERT INTO branch VALUES(4, "Buffalo", NULL, NULL);

SELECT employee.emp_id, employee.first_name, branch.branch_name
FROM employee 
JOIN branch    -- LEFT JOIN, RIGHT JOIN
ON employee.emp_id = branch.mgr_id;

--left table is employee

SELECT first_name,last_name
FROM employee 
WHERE emp_id IN(
    SELECT emp_id
    FROM works_with
    WHERE total_sales > 30000
);

--all the clients who are handled by the branch
-- that michael manages
--we know michals ID
SELECT client.client_id, client.client_name
FROM client
WHERE client.branch_id = (SELECT branch.branch_id
                          FROM branch
                          WHERE branch.mgr_id = 102);