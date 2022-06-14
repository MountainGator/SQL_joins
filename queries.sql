-- write your queries here
SELECT * FROM owners o FULL JOIN vehicles v ON o.id = v.owner_id;

SELECT first_name, last_name, COUNT(owner_id) from owners o
    JOIN vehicles v ON o.id = v.owner_id
    GROUP BY (first_name, last_name)
    ORDER BY first_name;

SELECT first_name, last_name, COUNT(owner_id) AS total_cars, ROUND(AVG(price)) AS average_price 
	FROM owners o
    JOIN vehicles v ON o.id = v.owner_id
    GROUP BY (first_name, last_name)
    HAVING COUNT(owner_id) > 1 AND AVG(price) > 10000
    ORDER BY COUNT(owner_id) desc;