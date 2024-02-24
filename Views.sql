use classicmodels;
CREATE VIEW temp_usa
AS SELECT * FROM customers WHERE country = "USA";

SELECT * FROM temp_usa;
DROP view temp_usa;

CREATE VIEW temp2
AS SELECT * FROM temp_usa;








SELECT * FROM offices;
SELECT * FROM employees;


CREATE VIEW territory_status
AS
SELECT territory, COUNT(employeeNumber) AS no_of_employees
FROM employees e
JOIN offices o ON e.officeCode = o.officeCode
GROUP BY territory
HAVING no_of_employees > 5;


SELECT * FROM territory_status